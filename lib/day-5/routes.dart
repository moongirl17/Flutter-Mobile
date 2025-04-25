import '../day-4/gridview_builder.dart';
import '../day-4/gridview_count.dart';
import '../day-4/gridview.dart';
// import 'home_page.dart';
import '../Tugas_2/homepage.dart';
// import '../Tugas_1/login.dart';
// import '../Tugas_1/register.dart';

// import 'package:flutter/day-6/pages/counter_page.dart';

class AppRoutes {
  static const String home = '/';
  // static const String login = '/login';
  // static const String register = '/register';
  static const String gridView = '/gridview';
  static const String gridViewCount = '/gridview_count';
  static const String gridViewBuilder = '/gridview_builder';
  static const String counter = '/counter';
}

final routes = {
  AppRoutes.home: (context) => const HomePage1(),

  AppRoutes.gridView: (context) => const GridviewPage(),
  AppRoutes.gridViewCount: (context) => const GridviewCountPage(),
  AppRoutes.gridViewBuilder: (context) => const GridviewBuilderPage(),
  // AppRoutes.counter: (context) => const CounterPage(),
};