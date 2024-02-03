import 'package:flutter/material.dart';
import 'package:full_time_force/features/history_commits/model/history_commit_model.dart';
import 'package:full_time_force/ui/style/palette.dart';

class HistoryCommitItemWidget extends StatelessWidget {
  const HistoryCommitItemWidget({Key? key, required this.historyCommitsModel})
      : super(key: key);

  final HistoryCommitsModel historyCommitsModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.6,
      color: Palette.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                const Icon(
                  Icons.person,
                  size: 50,
                  color: Palette.primaryText,
                ),
                SizedBox(
                  width: 110,
                  child: Text(
                    historyCommitsModel.commit.author.name,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Palette.primaryText,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    historyCommitsModel.commit.message,
                    maxLines: 2,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Palette.primaryText),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Date: ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Palette.primarySubtitle),
                      ),
                      Expanded(
                        child: Text(
                          historyCommitsModel.commit.author.date.toString(),
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Palette.primarySubtitle),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Url: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Palette.primarySubtitle,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          historyCommitsModel.url,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Palette.primarySubtitle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
