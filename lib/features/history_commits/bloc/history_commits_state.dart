part of 'history_commits_bloc.dart';

abstract class HistoryCommitsState extends Equatable {
  const HistoryCommitsState();
}

class HistoryCommitsInitial extends HistoryCommitsState {
  @override
  List<Object> get props => [];
}
