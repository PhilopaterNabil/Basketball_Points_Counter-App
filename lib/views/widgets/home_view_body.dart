import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/cubit/counter_state.dart';
import 'package:basketball_points/views/widgets/custom_dividing_line_view.dart';
import 'package:basketball_points/views/widgets/custom_reset_button_view.dart';
import 'package:basketball_points/views/widgets/custom_team_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTeamView(
                  nameTeam: 'A',
                  counter: BlocProvider.of<CounterCubit>(context).teamAPoints,
                ),
                const CustomDividingLineView(),
                CustomTeamView(
                  nameTeam: 'B',
                  counter: BlocProvider.of<CounterCubit>(context).teamBPoints,
                ),
              ],
            ),
            const Spacer(),
            CustomResetButtonView(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).TeamsValueZero();
              },
            ),
            const Spacer(),
          ],
        );
      },
    );
  }
}
