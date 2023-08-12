import 'package:announcement/core/utils.dart';
import 'package:announcement/presentation/blocs/data/data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              /// profile icons
              Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  onTap: () => Util.getImage(
                    context: context,
                    onTap: () async {

                    },
                  ),
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(width: 2, color: Colors.purple),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: const Image(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1526779259212-939e64788e3c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 108,
                        height: 108,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.add_circle,
                              color: Colors.purple,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              /// user name
              Text(
                "SezeR.dev",
                style: Theme.of(context).textTheme.titleLarge,
              ),

              /// user post and followers
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'posts',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              'POSTS',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "followers".toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              'FOLLOWERS',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// posts and followers button
              Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )
                    // color: Colors.purple
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.purple),
                        child: Text(
                          "Posts",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.sizeOf(context).width / 3,
                        child: Text(
                          "Followers",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
          // BlocBuilder<DataBloc, DataState>(
          //   bloc: context.read<DataBloc>(),
          //   builder: (context, state) {
          //     return ListView.builder(
          //       shrinkWrap: true,
          //       padding: const EdgeInsets.all(16),
          //       itemCount: state.data.length,
          //       itemBuilder: (_, i) {
          //         final category = state.categories.firstWhere((element) => element.id == state.data[i].categoryId);
          //         return  AnnouncementFeed(item: state.data[i], category: category,);
          //       },
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
