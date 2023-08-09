import 'dart:math';

import 'package:announcement/core/utils.dart';
import 'package:announcement/domain/models/category_model.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UploadScreen extends StatelessWidget {
  final PageController screenController;

  UploadScreen({Key? key, required this.screenController}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AnnouncementBloc, AnnouncementState>(
      bloc: context.read<AnnouncementBloc>(),
      listener: (context, state) {
        if (state is AnnouncementLoading) {
          print("Loading...");
        }

        if (state is AnnouncementGetImagesSuccess) {
          Navigator.of(context).pop();
        }

        if (state is AnnouncementUploadSuccess) {
          /// show message for user
          Util.msg(context, "Successfully uploaded!");

          /// clear text field for write next announcement
          nameController.clear();
          descController.clear();
          categoryController.clear();
          priceController.clear();
          phoneController.clear();

          /// navigate home work completed
          screenController.jumpToPage(0);

          /// update data
          context.read<AnnouncementBloc>().add(const GetAllDataEvent());
        }

        if (state is AnnouncementFailure) {
          Util.msg(context, state.message);
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<AnnouncementBloc, AnnouncementState>(
                  bloc: context.read<AnnouncementBloc>(),
                  builder: (context, state) {
                    if (state is AnnouncementGetImagesSuccess) {
                      final images = state.images;

                      return SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Stack(
                          children: [
                            GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: sqrt(images.length).ceil(),
                              children: List.generate(images.length, (index) {
                                return Expanded(child: Image.file(images[index], fit: BoxFit.cover));
                              }),
                            ),

                            Align(
                              alignment: const Alignment(0.9, -0.9),
                              child: IconButton.filled(
                                constraints: const BoxConstraints(
                                  maxWidth: 30,
                                  maxHeight: 30,
                                  minWidth: 30,
                                  minHeight: 30,
                                ),
                                style: IconButton.styleFrom(backgroundColor: Colors.grey.shade400),
                                padding: EdgeInsets.zero,
                                icon: const Icon(Icons.close, size: 25, color: Colors.white,),
                                onPressed: () {
                                  context.read<AnnouncementBloc>().add(const ClearImagesEvent());
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    return Container(
                      alignment: Alignment.center,
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).width * .75,
                      decoration: BoxDecoration(color: Colors.grey.shade200),
                      child: GestureDetector(
                        onTap: () => Util.getImage(
                          context: context,
                          onTap: () async {
                            context.read<AnnouncementBloc>().add(
                                  GetImagesEvent(
                                    await Util.pickMultiImage(),
                                  ),
                                );
                          },
                        ),
                        child: const Icon(
                          Icons.add_a_photo,
                          size: 125,
                        ),
                      ),
                    );
                  },
                ),
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
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    context.read<AnnouncementBloc>().add(UploadEvent(
                          name: nameController.text.trim(),
                          decs: descController.text.trim(),
                          phone: phoneController.text.trim(),
                          category: Category.fromString(
                              categoryController.text.trim()),
                          price: double.tryParse(priceController.text.trim()) ??
                              0.0,
                        ));
                  },
                  child: const Text("Upload"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
