import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SettingState extends Equatable {
  final ThemeMode? themeMode;

  const SettingState({
    this.themeMode,
  });

  SettingState copyWith({
    ThemeMode? themeMode,
  }) => SettingState(
    themeMode: themeMode ?? this.themeMode,
  );

  @override
  List<Object?> get props => [
    themeMode,
  ];
}