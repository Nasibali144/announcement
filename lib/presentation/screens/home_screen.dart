import 'package:announcement/core/routes.dart';
import 'package:announcement/core/utils.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:announcement/presentation/blocs/data/data_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DataBloc, DataState>(
        bloc: context.read<DataBloc>(),
        builder: (context, state) {
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: state.data.length,
            itemBuilder: (_, i) {
              final category = state.categories.firstWhere((element) => element.id == state.data[i].categoryId);
              return  AnnouncementFeed(item: state.data[i], category: category,);
            },
          );
        },
      ),
    );
  }
}

class AnnouncementFeed extends StatelessWidget {
  final Announcement item;
  final Category category;

  const AnnouncementFeed({Key? key, required this.item, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRoute.feedToDetail(context, item, category);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: const Alignment(.95, -.9),
              children: [
                SliderImages(images: item.images),
                IconButton(onPressed: () {
                  /// TODO: with bloc
                }, icon: const Icon(Icons.favorite), color: Colors.red, style: IconButton.styleFrom(backgroundColor: Colors.white.withOpacity(0.5)),)
              ],
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.name),
                  const SizedBox(width: 10),
                  Text(Util.dayMonth(item.modifyAt)),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.description),
                  const SizedBox(width: 10),
                  Text("\$ ${item.price.toStringAsFixed(2)}"),
                ],
              ),
              leading: Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(1.5),
                decoration: const BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                ),
                child: const Icon(CupertinoIcons.person),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderImages extends StatelessWidget {
  final List<String> images;
  const SliderImages({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> currentImage = ValueNotifier(0);
    return SizedBox(
      height: MediaQuery.sizeOf(context).width * .5,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: images.length,
            onPageChanged: (page) {
              currentImage.value = page;
            },
            itemBuilder: (context, i) {
              return CachedNetworkImage(
                imageUrl: images[i],
                fit: BoxFit.fitWidth,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              );
            },
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: ValueListenableBuilder<int>(
              valueListenable: currentImage,
              builder: (_, page, __) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for(int i = 0; i < images.length; i++) AnimatedContainer(
                      margin: const EdgeInsets.all(2),
                      duration: const Duration(milliseconds: 250),
                      height: 7.5,
                      width: i == page ? 15 : 7.5,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white10,
                            blurRadius: 7.5,
                            spreadRadius: 7.5,
                          )
                        ]
                      ),
                    ),
                  ],
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
