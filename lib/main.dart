import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:full_time_force/core/providers/providers.dart';
import 'package:full_time_force/features/history_commits/ui/history_commits_page.dart';
import 'package:full_time_force/ui/style/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: MyProviders.myProviders,
      child: MaterialApp(
        title: 'FullTimeForce',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Palette.primaryColor),
          useMaterial3: true,
        ),
        home: const HistoryCommitsPage(),
      ),
    );
  }
}
