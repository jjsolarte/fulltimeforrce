import 'package:dio/dio.dart';
import 'package:full_time_force/core/constants/api_constants.dart';
import 'package:full_time_force/features/history_commits/model/history_commit_model.dart';

abstract class HistoryCommitsService {
  Future<List<HistoryCommitsModel>> getHistoryCommits();
}

class HistoryCommitsServiceImpl implements HistoryCommitsService {
  HistoryCommitsServiceImpl({required this.dio});

  final Dio dio;

  @override
  Future<List<HistoryCommitsModel>> getHistoryCommits() async {
    try {
      final res = await dio
          .get(ApiConstants.historyCommitsApi)
          .timeout(const Duration(seconds: 60));
      final listResponse = res.data as List;
      return List.from(listResponse
          .map((e) => HistoryCommitsModel.fromJson(e as Map<String, dynamic>)));
    } catch (e) {
      rethrow;
    }
  }
}
