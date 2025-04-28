import 'package:flutter/material.dart';
import 'package:flutter_app/day-7/local_storage/theme_local_storage.dart';
import 'package:flutter_app/day-7/pages/product_page.dart';
import 'package:flutter_app/injector.dart' show setupInjector;
import '../day-5/routes.dart';
import '../day-6/blocs/theme_cubit.dart'; // Import ThemeCubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';
// import 'package:flutter_app/Tugas_1/register.dart'; // Import halaman register
// import 'package:flutter_app/Tugas_1/login.dart'; // Import halaman login
// import 'package:flutter_app/day-3/home.dart';

// Removed unused import
// Removed unused import
final getIt = GetIt.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
   Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(
            ThemeLocalStorage(
              getIt<SharedPreferences>(),
            ),
          )..init(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: state,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            // routes: routes,
            // initialRoute: AppRoutes.home,
           home: const ProductPage(),
            
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

