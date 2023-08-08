import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AnnouncementBloc, AnnouncementState>(
        bloc: context.read<AnnouncementBloc>()..add(const GetAllDataEvent()),
        builder: (context, state) {
          if(state is AnnouncementGetAllDataSuccess) {
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                final item = state.items[index];
                return Card(
                  child: ListTile(
                    title: Text(item.name),
                    subtitle: Text(item.desc),
                    trailing: IconButton(
                      onPressed: () {
                        context.read<AnnouncementBloc>().add(DeleteDataEvent(item.id));
                      },
                      icon: const Icon(CupertinoIcons.delete),
                    ),
                  ),
                );
              },
            );
          }

          return const Center(
            child: Text("No Data"),
          );
        },
        listener: (context, state) {
          if(state is AnnouncementDeleteDataSuccess) {
            context.read<AnnouncementBloc>().add(const GetAllDataEvent());
          }
        },
      ),
    );
  }
}
