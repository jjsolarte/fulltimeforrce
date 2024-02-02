import 'package:full_time_force/features/history_commits/bloc/history_commits_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyProviders {
  static final myProviders = [
    BlocProvider(create: (context) => HistoryCommitsBloc())
  ];
}
