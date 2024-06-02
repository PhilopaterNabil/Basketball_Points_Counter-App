import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonCounterView extends StatelessWidget {
  const CustomButtonCounterView(
      {super.key, required this.nameTeam, required this.counterNumber});

  final String nameTeam;
  final int counterNumber;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .teamIncrement(team: nameTeam, buttonNumber: counterNumber);
      },
      child: Text(
        "Add $counterNumber Point",
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}