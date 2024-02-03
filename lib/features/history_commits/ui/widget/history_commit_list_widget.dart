import 'package:flutter/material.dart';
import 'package:full_time_force/features/history_commits/model/history_commit_model.dart';
import 'package:full_time_force/features/history_commits/ui/widget/history_commit_item_widget.dart';

class HistoryCommitListWidget extends StatelessWidget {
  const HistoryCommitListWidget({Key? key, required this.historyModelList})
      : super(key: key);

  final List<HistoryCommitsModel> historyModelList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: historyModelList.length,
        itemBuilder: (context, item) {
          return HistoryCommitItemWidget(
            historyCommitsModel: historyModelList[item],
          );
        });
  }
}
