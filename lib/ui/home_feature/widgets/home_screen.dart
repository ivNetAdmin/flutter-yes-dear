import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/ui/app_bar_widget.dart';
import '../../core/ui/bottom_navigation_bar_widget.dart';
import '../view_model/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/details'),
          child: const Text('Go to the Details screen'),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}