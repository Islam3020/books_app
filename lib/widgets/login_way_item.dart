import 'package:flutter/material.dart';

class LoginWayItem extends StatelessWidget {
  const LoginWayItem({
    super.key,
    required this.widget,
  });
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 105,
        height: 56,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffE8ECF4)),
            borderRadius: BorderRadius.circular(16)),
        child: widget);
  }
}
