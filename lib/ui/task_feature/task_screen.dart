import 'package:flutter/material.dart';

import 'view_model/task_viewmodel.dart';

class TaskScreen extends StatelessWidget {

  const TaskScreen({super.key, required this.viewModel});

  final TaskViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: const Text('Yes Dear'),)
    );
  }
}