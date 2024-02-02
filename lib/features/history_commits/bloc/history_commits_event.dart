part of 'history_commits_bloc.dart';

abstract class HistoryCommitsEvent extends Equatable {
  const HistoryCommitsEvent();
}

class HistoryCommitCallListEvent extends HistoryCommitsEvent {
  @override
  List<Object?> get props => [];
}
