import 'package:full_time_force/features/history_commits/model/commit_model.dart';

class HistoryCommitsModel {
  final String sha;
  final String nodeId;
  final CommitModel commit;
  final String url;
  final String htmlUrl;
  final String commentsUrl;

  HistoryCommitsModel({
    required this.sha,
    required this.nodeId,
    required this.commit,
    required this.url,
    required this.htmlUrl,
    required this.commentsUrl,
  });

  factory HistoryCommitsModel.fromJson(Map<String, dynamic> json) => HistoryCommitsModel(
        sha: json["sha"],
        nodeId: json["node_id"],
        commit: CommitModel.fromJson(json["commit"]),
        url: json["url"],
        htmlUrl: json["html_url"],
        commentsUrl: json["comments_url"],
      );

  Map<String, dynamic> toJson() => {
        "sha": sha,
        "node_id": nodeId,
        "commit": commit.toJson(),
        "url": url,
        "html_url": htmlUrl,
        "comments_url": commentsUrl,
      };
}



