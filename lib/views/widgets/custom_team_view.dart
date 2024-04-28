import 'package:auto_size_text/auto_size_text.dart';
import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTeamView extends StatelessWidget {
  const CustomTeamView({super.key, required this.nameTeam, required this.counter});

  final String nameTeam;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Team $nameTeam',
          style: const TextStyle(fontSize: 42),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.3,
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: Center(
            child: AutoSizeText(
              '$counter',
              style: const TextStyle(
                fontSize: 180,
              ),
              maxLines: 1,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            backgroundColor: Colors.orange,
            minimumSize: const Size(150, 50),
          ),
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: nameTeam, buttonNumber: 1);
          },
          child: const Text(
            "Add 1 Point",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: const Size(150, 50),
          ),
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: nameTeam, buttonNumber: 2);
          },
          child: const Text(
            "Add 2 Point",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: const Size(150, 50),
          ),
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: nameTeam, buttonNumber: 3);
          },
          child: const Text(
            "Add 3 Point",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
