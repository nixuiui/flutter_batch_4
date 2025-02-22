import 'package:flutter/material.dart';
import 'package:flutter_batch_4/data/localstorage/theme_local_storage.dart';
import 'package:flutter_batch_4/pages/day6/cubit/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingCubit extends Cubit<SettingState> {

  late final ThemeLocalStorage themeLocalStorage;

  SettingCubit(
    this.themeLocalStorage
  ) : super(SettingState());

  void init() {
    final theme = themeLocalStorage.getTheme();
    emit(state.copyWith(
      themeMode: theme
    ));
  }

  void setThemeMode(ThemeMode themeMode) async {
    await themeLocalStorage.setTheme(themeMode);
    emit(state.copyWith(
      themeMode: themeMode
    ));
  }
  
}