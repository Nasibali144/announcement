import 'dart:io';

import 'package:flutter/material.dart';
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
}
