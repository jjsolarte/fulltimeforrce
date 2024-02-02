import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:full_time_force/features/history_commits/model/history_commit_model.dart';
import 'package:full_time_force/features/history_commits/repository/history_commits_repository.dart';
import 'package:full_time_force/features/history_commits/service/history_commits_service.dart';

part 'history_commits_event.dart';

part 'history_commits_state.dart';

class HistoryCommitsBloc
    extends Bloc<HistoryCommitsEvent, HistoryCommitsState> {
  HistoryCommitRepositoryImpl hcRepository = HistoryCommitRepositoryImpl(
      historyCommitsService: HistoryCommitsServiceImpl(dio: Dio()));

  HistoryCommitsBloc() : super(HistoryCommitsInitial()) {
    on<HistoryCommitsEvent>((event, emit) async {
      emit(LoadingState());
      final historyCommits = await hcRepository.getHistoryCommits();
      if (historyCommits != null) {
        emit(LoadedState(historyCommits: historyCommits));
      } else {
        emit(ErrorState());
      }
    });
  }
}
