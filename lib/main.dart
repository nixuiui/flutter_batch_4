import 'package:flutter/material.dart';
import 'package:flutter_batch_4/pages/day6/cubit/setting_cubit.dart';
import 'package:flutter_batch_4/pages/day6/cubit/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingCubit(),
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: state.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              useMaterial3: true,
            ),
            routes: routes,
            initialRoute: AppRoutes.counter,
          );
        }
      ),
    );
  }
}
