import 'package:flutter/material.dart';
import '../day-5/routes.dart';
import '../day-6/blocs/theme_cubit.dart'; // Import ThemeCubit
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_app/Tugas_1/register.dart'; // Import halaman register
// import 'package:flutter_app/Tugas_1/login.dart'; // Import halaman login
// import 'package:flutter_app/day-3/home.dart';

// Removed unused import
// Removed unused import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: state,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            routes: routes,
            initialRoute: AppRoutes.home,
          );
        }
      ),
      // initialRoute: '/login', // Halaman awal adalah login
      // routes: {
      //   '/login': (context) => const Login(title: 'Login'), // Halaman login
      //   '/register': (context) => const Register(title: 'Register'), // Halaman register
      //   '/home': (context) => const Homepage(title: 'Home'), // Halaman home
      // },
    );
  }
}

