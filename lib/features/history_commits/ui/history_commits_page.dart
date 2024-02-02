import 'package:flutter/material.dart';

class HistoryCommitsPage extends StatelessWidget {
  const HistoryCommitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('History Commits', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.deepPurple),
      body: Container(),
    );
  }
}
