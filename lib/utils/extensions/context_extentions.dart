import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {

  Future<T?> push<T extends Object?>(Widget widget) => Navigator.push(
    this, PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      }
    )
  );

  void pop<T extends Object?>([T? result]) => Navigator.pop(this, result);

  Future<T?> dialog<T>(Widget widget) => showDialog<T>(
    context: this, 
    builder: (context) => widget
  );

}