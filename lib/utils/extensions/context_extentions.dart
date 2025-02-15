import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {

  Future<T?> push<T extends Object?>(Widget widget) => Navigator.push(
    this, MaterialPageRoute(builder: (context) => widget)
  );

  void pop<T extends Object?>([T? result]) => Navigator.pop(this, result);

  Future<T?> dialog<T>(Widget widget) => showDialog<T>(
    context: this, 
    builder: (context) => widget
  );

}