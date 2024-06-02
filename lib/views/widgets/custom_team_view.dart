import 'package:auto_size_text/auto_size_text.dart';
import 'package:basketball_points/views/widgets/custom_button_counter_view.dart';
import 'package:flutter/material.dart';

class CustomTeamView extends StatelessWidget {
  const CustomTeamView(
      {super.key, required this.nameTeam, required this.counter});

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
        CustomButtonCounterView(
          nameTeam: nameTeam,
          counterNumber: 1,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomButtonCounterView(
          nameTeam: nameTeam,
          counterNumber: 2,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomButtonCounterView(
          nameTeam: nameTeam,
          counterNumber: 3,
        ),
      ],
    );
  }
}
