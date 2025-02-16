import 'package:flutter/material.dart';
import 'package:flutter_batch_4/pages/day6/cubit/counter_cubit.dart';
import 'package:flutter_batch_4/pages/day6/cubit/counter_state.dart';
import 'package:flutter_batch_4/pages/day6/cubit/setting_cubit.dart';
import 'package:flutter_batch_4/pages/day6/cubit/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  final cubit = CounterCubit();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            BlocBuilder<SettingCubit, SettingState>(
              builder: (context, state) {
                final settingCubit = context.read<SettingCubit>();
                return SegmentedButton<ThemeMode>(
                  segments: [
                    ButtonSegment<ThemeMode>(
                      value: ThemeMode.dark,
                      label: Text("Dark")
                    ),
                    ButtonSegment<ThemeMode>(
                      value: ThemeMode.light,
                      label: Text("Light")
                    ),
                    ButtonSegment<ThemeMode>(
                      value: ThemeMode.system,
                      label: Text("System")
                    ),
                  ], 
                  selected: {state.themeMode ?? ThemeMode.system},
                  onSelectionChanged: (v) => settingCubit.setThemeMode(v.first),
                );
              }
            ),
            BlocBuilder<CounterCubit, CounterState>(
              bloc: cubit,
              buildWhen: (p, c) => p.counter != c.counter,
              builder: (context, state) {
                return Text(
                  "Counter: ${state.counter}"
                );
              }
            ),
            BlocBuilder<CounterCubit, CounterState>(
              bloc: cubit,
              buildWhen: (p, c) => p.loading != c.loading,
              builder: (context, state) {
                if(state.loading) {
                  return SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator()
                  );
                }
                return SizedBox.shrink();
              }
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          FloatingActionButton(
            onPressed: () => cubit.decrement(),
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () => cubit.increment(),
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}