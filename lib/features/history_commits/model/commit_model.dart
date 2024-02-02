import 'package:full_time_force/features/history_commits/model/author_model.dart';

class CommitModel {
  final AuthorModel author;
  final String message;
  final String url;
  final int commentCount;

  CommitModel({
    required this.author,
    required this.message,
    required this.url,
    required this.commentCount,
  });

  factory CommitModel.fromJson(Map<String, dynamic> json) => CommitModel(
    author: AuthorModel.fromJson(json["author"]),
    message: json["message"],
    url: json["url"],
    commentCount: json["comment_count"],
  );

  Map<String, dynamic> toJson() => {
    "author": author.toJson(),
    "message": message,
    "url": url,
    "comment_count": commentCount,
  };
}