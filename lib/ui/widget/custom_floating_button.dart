import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:full_time_force/features/history_commits/bloc/history_commits_bloc.dart';
import 'package:full_time_force/ui/style/palette.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Palette.primaryColor,
            width: 2,
          )),
      child: IconButton(
          onPressed: () => context
              .read<HistoryCommitsBloc>()
              .add(HistoryCommitCallListEvent()),
          color: Palette.primaryColor,
          icon: const Icon(
            Icons.download,
            color: Palette.primaryColor,
          )),
    );
  }
}
