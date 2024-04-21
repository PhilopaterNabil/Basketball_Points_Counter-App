import 'package:basketball_points/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      appBar: customAppBar(),
      body: const HomeViewBody(),
    );
  }
}

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.orange,
    title: const Text(
      "Points Counter",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}
