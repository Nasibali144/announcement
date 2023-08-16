import 'package:announcement/core/utils.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:announcement/domain/models/member/member_model.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:announcement/presentation/components/like_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreen extends StatelessWidget {
  final Announcement announcement;
  final Category category;

  const DetailScreen(
      {Key? key, required this.announcement, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>()..add(AuthGetAccountEvent(uid: announcement.userId));
    final announcementBloc = context.read<AnnouncementBloc>()..add(AnnouncementDataEvent(announcement.id));
    return StreamBuilder<Announcement>(
      initialData: announcement,
      stream: announcementBloc.state.stream,
      builder: (context, snapshot) {
        Announcement ancmt;
        if(snapshot.hasData) {
          ancmt = snapshot.data!;
        } else {
          ancmt = announcement;
        }

        return Scaffold(
          extendBody: true,
          body: SafeArea(
            bottom: false,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ListView(
                  children: [
                    /// header
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CarouselSlider(
                            items: List.generate(
                              ancmt.images.length,
                              (index) => CachedNetworkImage(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.sizeOf(context).width,
                                fit: BoxFit.cover,
                                imageUrl: ancmt.images[index],
                              ),
                            ),
                            options: CarouselOptions(
                              height: MediaQuery.sizeOf(context).width * .75,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.7,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              // onPageChanged: (){},
                              scrollDirection: Axis.horizontal,
                            )),
                        PopupMenuButton<String>(
                          initialValue: "Delete",
                          itemBuilder: (BuildContext context) {
                            return [
                              const PopupMenuItem(
                                value: "Delete",
                                child: Text("Delete"),
                              ),
                              const PopupMenuItem(
                                value: "Edit",
                                child: Text("Edit"),
                              ),
                            ];
                          },
                          child: IconButton(
                            onPressed: null,
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.25)),
                            icon: const Icon(
                              Icons.menu,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),

                    /// body
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              /// category
                              Container(
                                padding: const EdgeInsets.only(
                                    bottom: 2, right: 3, left: 3),
                                decoration: BoxDecoration(
                                    color: Colors.teal.shade400,
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(5))),
                                child: Text(
                                  category.name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),

                              /// like
                              LikeButton(announcement: ancmt),
                            ],
                          ),
                          const SizedBox(height: 10),

                          /// title
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ancmt.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Text(Util.date(ancmt.modifyAt),
                                  style: Theme.of(context).textTheme.titleMedium,
                                  textAlign: TextAlign.end),
                            ],
                          ),
                          const SizedBox(height: 10),

                          /// description
                          Text(
                            ancmt.description,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 10),

                          /// price
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Price: \$ ${ancmt.price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text("1,234 views\n ${ancmt.likes.length} likes",
                                  style: Theme.of(context).textTheme.titleMedium,
                                  textAlign: TextAlign.end),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    BlocBuilder<AuthBloc, AuthState>(
                      bloc: authBloc,
                      builder: (context, state) {
                        Member? member;
                        if (state is AuthSuccessState) {
                          member = state.user;
                        }

                        return ListTile(
                          leading: Container(
                            height: 60,
                            width: 60,
                            padding: const EdgeInsets.all(1.5),
                            decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                    member != null && member.imageUrl.isNotEmpty ? member.imageUrl : "https://img.icons8.com/?size=512&id=23264&format=png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text(member != null ? member.name : "Username"),
                          subtitle: Text(member != null ? member.email : "user@email.com"),
                          trailing: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.call)),
                        );
                      },
                    ),

                    /// footer
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),

                    /// discussion
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          /// other
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.cyanAccent, width: 2),
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          "https://images.unsplash.com/photo-1599566147214-ce487862ea4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=647&q=80"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.sizeOf(context).width * .65),
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  border: Border.all(color: Colors.teal),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                ),
                                child: const Text(
                                  "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden",
                                  softWrap: true,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          /// me
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.sizeOf(context).width * .65),
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(248, 222, 192, 0.6),
                                  border: Border.all(color: Colors.amber),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  ),
                                ),
                                child: const Text(
                                  "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune",
                                  softWrap: true,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                clipBehavior: Clip.antiAlias,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.orange, width: 2),
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          "https://images.unsplash.com/photo-1599566147214-ce487862ea4f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=647&q=80"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 65),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 65,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade700,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Your discuss...",
                        hintStyle: const TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.paperplane_fill),
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
