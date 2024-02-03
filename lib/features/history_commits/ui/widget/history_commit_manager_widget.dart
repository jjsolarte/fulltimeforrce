import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:full_time_force/features/history_commits/bloc/history_commits_bloc.dart';
import 'package:full_time_force/features/history_commits/ui/widget/history_commit_list_widget.dart';
import 'package:full_time_force/ui/style/palette.dart';

class HistoryCommitManagerWidget extends StatelessWidget {
  const HistoryCommitManagerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryCommitsBloc, HistoryCommitsState>(
        builder: (context, state) {
      if (state is LoadingState) {
        return const Center(
            child: CircularProgressIndicator(
          color: Palette.primaryColor,
        ));
      }
      if (state is ErrorState) {
        return const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'So sorry, we cant list commits',
            style: TextStyle(
              color: Palette.primaryColor,
              fontSize: 22,
            ),
          ),
        );
      }
      if (state is LoadedState) {
        return HistoryCommitListWidget(historyModelList: state.historyCommits);
      }
      return const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'FullTimeForce - History Commits by JJSolarte',
          style: TextStyle(
            color: Palette.primaryColor,
            fontSize: 22,
          ),
        ),
      );
    });
  }
}
