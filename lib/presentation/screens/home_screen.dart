import 'package:announcement/core/service_locator.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final bloc = locator<AnnouncementBloc>()..add(const GetAllDataEvent());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AnnouncementBloc, AnnouncementState>(
        bloc: bloc,
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

        },
      ),
    );
  }
}
