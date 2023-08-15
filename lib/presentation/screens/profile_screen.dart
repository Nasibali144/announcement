import 'package:announcement/core/service_locator.dart';
import 'package:announcement/core/utils.dart';
import 'package:announcement/domain/repositories/auth_repository.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:announcement/presentation/blocs/data/data_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final bloc = locator.get<AuthBloc>()..add(const AuthGetAccountEvent());
  final dataBloc = locator.get<DataBloc>()/*..add(DataMyEvent(locator.get<AuthRepository>().user!.uid))*/;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appbar
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => bloc.add(const AuthSignOutEvent()),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      /// drawer
      drawer: Drawer(
        child: Column(
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              bloc: bloc,
              builder: (context, state) {
                if (kDebugMode) {
                  print(state);
                }
                if (state is AuthSuccessState && state.user != null) {
                  return UserAccountsDrawerHeader(
                    accountName: Text(state.user?.name ?? ""),
                    accountEmail: Text(state.user?.email ?? ""),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextButton(
                onPressed: () => bloc.add(const AuthDeleteAccountEvent()),
                child: const Text("Delete Account"),
              ),
            )
          ],
        ),
      ),

      body: Column(
        children: [
          BlocBuilder<AuthBloc, AuthState>(
            bloc: bloc,
            builder: (context, state) {
              if(state is AuthSuccessState) {
                final user = state.user!;
                return Column(
                  children: [
                    /// profile icons
                    Align(
                      alignment: Alignment.topCenter,
                      child: GestureDetector(
                        onTap: () => Util.getImage(
                          context: context,
                          onTap: () async {},
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                border:
                                Border.all(width: 2, color: Colors.purple),
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: const Image(
                                    image: NetworkImage(
                                        "https://img.icons8.com/?size=512&id=23264&format=png"),
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
                      user.name,
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
                                  const Text(
                                    'Announcement',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    user.announcements.length.toString(),
                                    style: const TextStyle(
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
                                  const Text(
                                    "Likes",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    user.likes.length.toString(),
                                    style: const TextStyle(
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
                );
              }

              return const SizedBox.shrink();
            },
          ),

          BlocBuilder<DataBloc, DataState>(
            bloc: dataBloc,
            builder: (context, state) {
              if(state.status == DataStatus.successMy) {
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    shrinkWrap: true,
                    itemCount: state.myData.length,
                    itemBuilder: (_, i) {
                      /// TODO: this code maybe remove in the future
                      final category = state.categories.firstWhere((element) => element.id == state.myData[i].categoryId);

                      final data = state.myData;
                      return AnnouncementFeed(
                        item: data[i],
                        category: category,
                      );
                    },
                  ),
                );
              }

              if (state.status == DataStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return const SizedBox.shrink();
            },
          )
        ],
      ),
    );
  }
}
