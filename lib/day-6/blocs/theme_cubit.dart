import 'package:flutter/material.dart';
import 'package:flutter_app/day-7/local_storage/theme_local_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit(ThemeLocalStorage themeLocalStorage) : super(ThemeMode.light);

  void toggleTheme() {
    if (state == ThemeMode.light) {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.light);
    }
  }

  init() {}

}