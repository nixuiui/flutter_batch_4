import 'package:flutter/material.dart';
import 'package:flutter_batch_4/pages/day6/cubit/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingCubit extends Cubit<SettingState> {

  SettingCubit() : super(SettingState());

  void setThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(
      themeMode: themeMode
    ));
  }
  
}