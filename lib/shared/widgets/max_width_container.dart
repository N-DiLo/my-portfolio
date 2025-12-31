import 'package:flutter/material.dart';
import 'package:vize/vize.dart';

class MaxWidthContainer extends StatelessWidget {
  final Widget child;
  const MaxWidthContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000.w),
        child: child,
      ),
    );
  }
}
