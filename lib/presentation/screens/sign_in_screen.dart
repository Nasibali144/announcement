import 'package:announcement/core/routes.dart';
import 'package:announcement/core/service_locator.dart';
import 'package:announcement/core/utils.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final bloc = locator.get<AuthBloc>();

  void signIn() {
    bloc.add(AuthSignInEvent(
        emailController.text.trim(), passwordController.text.trim()));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: bloc,
      listener: (context, state) {
        if(state is AuthFailureState) {
          Util.msg(context, state.message, color: Colors.red);
        }

        if(state is AuthSuccessState) {
          if(state.message != null) Util.msg(context, state.message!);

          AppRoute.signInToHome(context);
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
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
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: signIn,
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(MediaQuery.sizeOf(context).width, 50)),
                      child: const Text("Sign In"),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: "Do you have not an account? ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                            style: const TextStyle(color: Colors.blueAccent),
                            text: "Sign Up",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => AppRoute.signInToSignUp(context),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
