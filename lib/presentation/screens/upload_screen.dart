import 'dart:io';
import 'dart:math';
import 'package:announcement/core/utils.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:announcement/presentation/blocs/data/data_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadScreen extends StatelessWidget {
  final PageController screenController;

  UploadScreen({Key? key, required this.screenController}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<File> files = [];
    return BlocListener<AnnouncementBloc, AnnouncementState>(
      bloc: context.read<AnnouncementBloc>(),
      listener: (context, state) {
        if (state.status == Status.success && state.images.isNotEmpty) {
          Navigator.of(context).pop();
          if (state.images.isEmpty) {
            context.read<AnnouncementBloc>().add(const ClearImagesEvent());
          }
        }

        if (state.status == Status.success &&
            state.images.isEmpty &&
            screenController.page == 1) {
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
          context.read<DataBloc>().add(const DataAnnouncementEvent());
        }

        if (state.status == Status.failure) {
          Util.msg(context, state.message!);
        }
      },
      child: Stack(
        children: [
          Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// images
                    BlocBuilder<AnnouncementBloc, AnnouncementState>(
                      bloc: context.read<AnnouncementBloc>(),
                      builder: (context, state) {
                        if (state.status != Status.failure &&
                            state.images.isNotEmpty) {
                          final images = state.images;
                          files = images;
                          return SizedBox(
                            width: MediaQuery.sizeOf(context).width,
                            child: Stack(
                              children: [
                                GridView.count(
                                  shrinkWrap: true,
                                  crossAxisCount: sqrt(images.length).ceil(),
                                  children:
                                      List.generate(images.length, (index) {
                                    return Image.file(images[index],
                                        fit: BoxFit.cover);
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
                                    style: IconButton.styleFrom(
                                        backgroundColor: Colors.grey.shade400),
                                    padding: EdgeInsets.zero,
                                    icon: const Icon(
                                      Icons.close,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      context
                                          .read<AnnouncementBloc>()
                                          .add(const ClearImagesEvent());
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
                          decoration:
                              BoxDecoration(color: Colors.grey.shade200),
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
                        decoration:
                            const InputDecoration(hintText: "Description")),
                    const SizedBox(height: 10),

                    TextField(
                      controller: categoryController,
                      decoration: InputDecoration(
                        hintText: "Category",
                        suffixIcon: PopupMenuButton<Category>(
                          onSelected: (category) {
                            categoryController.text = category.name;
                          },
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          itemBuilder: (_) {
                            final list = context.read<DataBloc>().state.categories;
                            return list.map((category) => PopupMenuItem(value: category, child: CategoryUi(category: category))).toList();
                          },
                          icon: const Icon(Icons.arrow_drop_down_outlined),
                        ),
                      ),
                      readOnly: true,
                    ),

                    const SizedBox(height: 10),

                    TextField(
                        controller: priceController,
                        decoration: const InputDecoration(hintText: "Price")),
                    const SizedBox(height: 10),

                    TextField(
                        controller: phoneController,
                        decoration: const InputDecoration(hintText: "Phone")),
                    const SizedBox(height: 10),

                    TextField(
                        controller: addressController,
                        decoration: const InputDecoration(hintText: "Address")),
                    const SizedBox(height: 20),
                    FilledButton(
                      onPressed: () {
                        context.read<AnnouncementBloc>().add(UploadEvent(
                              name: nameController.text.trim(),
                              decs: descController.text.trim(),
                              phone: phoneController.text.trim(),
                              category: Category.fromString(

                                  /// Warning!!!
                                  categoryController.text.trim(),
                                  context.read<DataBloc>().state.categories),
                              price: double.tryParse(
                                      priceController.text.trim()) ??
                                  0.0,
                              files: files,
                              address: addressController.text.trim(),
                            ));
                      },
                      child: const Text("Upload"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BlocBuilder<AnnouncementBloc, AnnouncementState>(
            bloc: context.read<AnnouncementBloc>(),
            builder: (context, state) {
              if (state.status != Status.loading) {
                return const SizedBox.shrink();
              }

              return const Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class CategoryUi extends StatelessWidget {
  final Category category;

  const CategoryUi({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CachedNetworkImage(
          width: 40,
          imageUrl: category.imageUrl,
          progressIndicatorBuilder: (context, url, downloadProgress) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CircularProgressIndicator.adaptive(
                value: downloadProgress.progress,
                strokeWidth: 1,
              ),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        const SizedBox(width: 5),
        Text(category.name),
      ],
    );
  }
}
