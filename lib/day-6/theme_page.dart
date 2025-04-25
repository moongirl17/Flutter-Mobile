import 'package:flutter/material.dart';
import 'blocs/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Theme Page'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
              child: const Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}