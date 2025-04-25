import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit()
      : super(ThemeData.light()); // Default tema adalah light

  void toggleTheme(bool isDarkMode) {
    if (isDarkMode) {
      emit(ThemeData.dark()); // Ubah ke tema gelap
    } else {
      emit(ThemeData.light()); // Ubah ke tema terang
    }
  }
}