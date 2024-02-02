import 'package:full_time_force/features/history_commits/model/history_commit_model.dart';
import 'package:full_time_force/features/history_commits/service/history_commits_service.dart';

abstract class HistoryCommitRepository {
  Future<List<HistoryCommitsModel>?> getHistoryCommits();
}

class HistoryCommitRepositoryImpl implements HistoryCommitRepository {
  HistoryCommitRepositoryImpl({required this.historyCommitsService});

  final HistoryCommitsService historyCommitsService;

  @override
  Future<List<HistoryCommitsModel>?> getHistoryCommits() async {
    try {
      final response = await historyCommitsService.getHistoryCommits();
      return response;
    } catch (e) {
      return null;
    }
  }
}
