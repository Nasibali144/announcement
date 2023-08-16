import 'package:announcement/core/routes.dart';
import 'package:announcement/core/utils.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController prePasswordController = TextEditingController();



  void signUp(AuthBloc bloc) {
    bloc.add(AuthSignUpEvent(
        usernameController.text.trim(),
        emailController.text.trim(),
        passwordController.text.trim(),
        prePasswordController.text.trim()));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    return BlocListener<AuthBloc, AuthState>(
      bloc: bloc,
      listener: (context, state) {
        if(state is AuthFailureState) {
          Util.msg(context, state.message, color: Colors.red);
        }

        if(state is AuthSuccessState) {
          if(state.message != null) Util.msg(context, state.message!);

          AppRoute.signUpToSignIn(context);
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        hintText: "Username",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: prePasswordController,
                      decoration: const InputDecoration(
                        hintText: "Pre Password",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () => signUp(bloc),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(MediaQuery.sizeOf(context).width, 50)),
                      child: const Text("Sign Up"),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: "Already you have an account? ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                            style: const TextStyle(color: Colors.blueAccent),
                            text: "Sign In",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => AppRoute.signUpToSignIn(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              BlocBuilder<AuthBloc, AuthState>(
                bloc: bloc,
                builder: (context, state) {
                  if(state is AuthLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
