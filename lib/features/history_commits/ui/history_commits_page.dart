import 'package:flutter/material.dart';
import 'package:full_time_force/features/history_commits/ui/widget/history_commit_manager_widget.dart';
import 'package:full_time_force/ui/style/palette.dart';
import 'package:full_time_force/ui/widget/custom_floating_button.dart';

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
          backgroundColor: Palette.primaryColor),
      body: const HistoryCommitManagerWidget(),
      floatingActionButton: const CustomFloatingButton(),
    );
  }
}
