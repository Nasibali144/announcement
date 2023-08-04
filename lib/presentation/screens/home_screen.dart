import 'package:announcement/core/routes.dart';
import 'package:announcement/core/service_locator.dart';
import 'package:announcement/core/utils.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final bloc = locator.get<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: bloc,
      listener: (context, state) {
        if (state is DeleteAccountSuccessState) {
          Util.msg(context, "Successfully Delete Account");
          AppRoute.homeToSignIn(context);
        }

        if (state is SignOutSuccessState) {
          Util.msg(context, "Successfully Sign Out");
          AppRoute.homeToSignIn(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  bloc.add(const AuthGetAccountEvent());
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu),
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () => bloc.add(const AuthSignOutEvent()),
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: const Center(
          child: Text("Home"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              BlocBuilder<AuthBloc, AuthState>(
                bloc: bloc,
                builder: (context, state) {
                  print(state);
                  if (state is AuthSuccessState && state.user != null) {
                    return UserAccountsDrawerHeader(
                      accountName: Text(state.user?.displayName ?? ""),
                      accountEmail: Text(state.user?.email ?? ""),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextButton(
                  onPressed: () => bloc.add(const AuthDeleteAccountEvent()),
                  child: const Text("Delete Account"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
