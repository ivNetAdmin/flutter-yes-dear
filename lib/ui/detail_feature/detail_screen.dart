import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/ui/app_bar_widget.dart';
import '../core/ui/bottom_navigation_bar_widget.dart';

class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          child: const Text('Go back to the Home screen'),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}