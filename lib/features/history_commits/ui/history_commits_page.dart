import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:full_time_force/features/history_commits/bloc/history_commits_bloc.dart';

class HistoryCommitsPage extends StatelessWidget {
  const HistoryCommitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'History Commits',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple),
      body: Container(),
      floatingActionButton: IconButton(
          onPressed: () => context
              .read<HistoryCommitsBloc>()
              .add(HistoryCommitCallListEvent()),
          color: Colors.deepPurpleAccent,
          icon: const Icon(
            Icons.download,
            color: Colors.deepPurple,
          )),
    );
  }
}
