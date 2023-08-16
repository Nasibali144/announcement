import 'dart:io';

import 'package:announcement/core/routes.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class Util {
  static void msg(BuildContext context, String message,
      {Color color = Colors.green}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  static void getImage(
      {required BuildContext context, void Function()? onTap}) {
    showModalBottomSheet(
      clipBehavior: Clip.antiAlias,
      context: context,
      builder: (context) {
        return SafeArea(
          child: ListTile(
            onTap: onTap,
            leading: const Icon(Icons.photo),
            title: const Text("Pick from gallery"),
          ),
        );
      },
    );
  }

  static Future<List<File>> pickMultiImage() async {
    final picker = ImagePicker();
    final files = await picker.pickMultiImage();
    return files.map((e) => File(e.path)).toList();
  }

  static String dayMonth(String stringDate) {
    final date = DateTime.parse(stringDate);
    final transformer = DateFormat.MMMMd();
    return transformer.format(date);
  }

  static String date(String stringDate) {
    final date = DateTime.parse(stringDate);
    final transformer1 = DateFormat.yMMMMd();
    final transformer2 = DateFormat.Hm();

    return "${transformer1.format(date)}\n${transformer2.format(date)}";
  }

  static void dialogDeleteAccountInfo({required BuildContext context}) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        if (Platform.isIOS) {}

        return AlertDialog(
          title: const Text("Are you sure delete your account?"),
          content: const Text(
              "After deleting your account, You can't restore your account's data!"),
          actions: [
            TextButton(
                onPressed: () {
                  AppRoute.close(dialogContext);
                  dialogDeleteAccountWithPassword(context: context);
                },
                child: const Text("Confirm")),
            TextButton(
                onPressed: () {
                  AppRoute.close(dialogContext);
                },
                child: const Text("Cancel")),
          ],
        );
      },
    );
  }

  static void dialogDeleteAccountWithPassword({required BuildContext context}) {
    final passwordController = TextEditingController();

    void deleteAccount(BuildContext closeContext, String password) {
      if(context.mounted) {
        AppRoute.close(closeContext);
        context.read<AuthBloc>().add(AuthDeleteAccountEvent(password));
      } else {
        print("Problem with context");
      }
    }

    showDialog(
      context: context,
      builder: (dialogContext) {
        if (Platform.isIOS) {
          // todo: dialog for cupertino design
        }

        return AlertDialog(
          title: const Text(
              "Deleting your account you have to confirm your password!"),
          content: TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: "Password",
            ),
            onSubmitted: (pwd) => deleteAccount(dialogContext, pwd),
          ),
          actions: [
            TextButton(onPressed: () => deleteAccount(dialogContext, passwordController.text.trim()), child: const Text("Confirm")),
            TextButton(
                onPressed: () {
                  AppRoute.close(dialogContext);
                },
                child: const Text("Cancel")),
          ],
        );
      },
    );
  }
}
