import 'package:flutter/material.dart';
import 'routes.dart';

class MainPage extends StatelessWidget {

  final String name;

  const MainPage({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Text(
            'Welcome, $name!',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          FilledButton(
            onPressed: () => Navigator.pushNamed(
              context, 
              AppRoutes.gridView,
              arguments: name
            ), 
            child: Text("Grid View Page"),
          ),
        ],
      ),
    );
  }
}