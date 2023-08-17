import 'package:announcement/core/routes.dart';
import 'package:announcement/core/utils.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:announcement/presentation/screens/home_screen.dart';
import 'package:announcement/presentation/screens/profile_screen.dart';
import 'package:announcement/presentation/screens/upload_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final PageController screenController = PageController();


  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
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
        /// body
        body: PageView(
          controller: screenController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const HomeScreen(),
            UploadScreen(
              screenController: screenController,
            ),
            const ProfileScreen(),
          ],
        ),



        /// bottom
        bottomNavigationBar: BottomNavigationBar(
          onTap: (page) => screenController.jumpToPage(page),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.upload_circle), label: "Upload"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

