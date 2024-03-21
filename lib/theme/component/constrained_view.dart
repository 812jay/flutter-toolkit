import 'package:flutter/material.dart';
import 'package:flutter_toolkit/theme/res/layout.dart';

class ConstrainedView extends StatelessWidget {
  const ConstrainedView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: Breakpoints.desktop,
        ),
        child: child,
      ),
    );
  }
}
