import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
}
