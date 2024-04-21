import 'package:flutter/material.dart';

class CustomDividingLineView extends StatelessWidget {
  const CustomDividingLineView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 420,
      child: VerticalDivider(
        color: Colors.pink,
        thickness: 1.7,
      ),
    );
  }
}
