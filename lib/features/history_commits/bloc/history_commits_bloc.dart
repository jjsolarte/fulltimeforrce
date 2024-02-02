import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'history_commits_event.dart';
part 'history_commits_state.dart';

class HistoryCommitsBloc extends Bloc<HistoryCommitsEvent, HistoryCommitsState> {
  HistoryCommitsBloc() : super(HistoryCommitsInitial()) {
    on<HistoryCommitsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
