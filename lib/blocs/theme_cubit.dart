import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_5/blocs/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(): super(ThemeState());

  void setThemeMode(ThemeMode themeMode){
    emit(state.copyWith(
      themeMode: themeMode
    ));
  }
}