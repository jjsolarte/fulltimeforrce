part of 'history_commits_bloc.dart';

abstract class HistoryCommitsState extends Equatable {
  const HistoryCommitsState();
}

class HistoryCommitsInitial extends HistoryCommitsState {
  @override
  List<Object> get props => [];
}

class LoadingState extends HistoryCommitsState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends HistoryCommitsState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends HistoryCommitsState {
  const LoadedState({required this.historyCommits});

  final List<HistoryCommitsModel> historyCommits;

  @override
  List<Object?> get props => [historyCommits];
}