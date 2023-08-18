import 'package:announcement/core/service_locator.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:announcement/presentation/blocs/data/data_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikeButton extends StatelessWidget {
  final Announcement announcement;

  const LikeButton({Key? key, required this.announcement}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bloc = locator<AnnouncementBloc>();
    return IconButton(
      onPressed: () {
        announcement.isFavorite = !announcement.isFavorite;
        bloc.add(LikeEvent(announcement));
      },
      icon: BlocBuilder<AnnouncementBloc, AnnouncementState>(
        bloc: bloc,
        buildWhen: (previous, current) {
          return current.status == Status.successLike;
        },
        builder: (context, state) {
          return Icon(announcement.isFavorite ? Icons.favorite : Icons.favorite_outline);
        },
      ),
      color: Colors.red,
      style: IconButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
