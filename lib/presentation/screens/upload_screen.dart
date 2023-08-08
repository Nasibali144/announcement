import 'package:announcement/core/service_locator.dart';
import 'package:announcement/core/utils.dart';
import 'package:announcement/domain/models/category_model.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadScreen extends StatelessWidget {
  UploadScreen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final bloc = locator.get<AnnouncementBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AnnouncementBloc, AnnouncementState>(
      bloc: bloc,
      listener: (context, state) {
        if(state is AnnouncementLoading) {
          print("Loading...");
        }

        if(state is AnnouncementUploadSuccess) {
          Util.msg(context, "Successfully uploaded!");
        }

        if(state is AnnouncementFailure) {
          Util.msg(context, state.message);
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextField(
                  controller: nameController,
                  decoration: const InputDecoration(hintText: "Name")),
              const SizedBox(height: 10),
              TextField(
                  controller: descController,
                  decoration: const InputDecoration(hintText: "Description")),
              const SizedBox(height: 10),
              TextField(
                  controller: categoryController,
                  decoration: const InputDecoration(hintText: "Category")),
              const SizedBox(height: 10),
              TextField(
                  controller: priceController,
                  decoration: const InputDecoration(hintText: "Price")),
              const SizedBox(height: 10),
              TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(hintText: "Phone")),
              const SizedBox(height: 10),
              const Spacer(),
              FilledButton(
                onPressed: () {
                  bloc.add(UploadEvent(
                    name: nameController.text.trim(),
                    decs: descController.text.trim(),
                    phone: phoneController.text.trim(),
                    category: Category.fromString(
                        categoryController.text.trim()),
                    price: double.tryParse(priceController.text.trim()) ?? 0.0,
                  ));
                },
                child: const Text("Upload"),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
