import 'package:full_time_force/features/history_commits/model/author_model.dart';

class CommitModel {
  final AuthorModel author;
  final String message;
  final int commentCount;

  CommitModel({
    required this.author,
    required this.message,
    required this.commentCount,
  });

  factory CommitModel.fromJson(Map<String, dynamic> json) => CommitModel(
    author: AuthorModel.fromJson(json["author"]),
    message: json["message"],
    commentCount: json["comment_count"],
  );

  Map<String, dynamic> toJson() => {
    "author": author.toJson(),
    "message": message,
    "comment_count": commentCount,
  };
}