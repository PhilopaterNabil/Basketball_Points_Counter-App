import 'package:auto_size_text/auto_size_text.dart';
import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              "Points Counter",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 42,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.3,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        child: Center(
                          child: AutoSizeText(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
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
                              .TeamIncrement(team: 'A', buttonNumber: 1);
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
                              .TeamIncrement(team: 'A', buttonNumber: 2);
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
                              .TeamIncrement(team: 'A', buttonNumber: 3);
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
                  ),
                  const SizedBox(
                    height: 420,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 42,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.3,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        child: Center(
                          child: AutoSizeText(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
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
                              .TeamIncrement(team: 'B', buttonNumber: 1);
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
                              .TeamIncrement(team: 'B', buttonNumber: 2);
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
                              .TeamIncrement(team: 'B', buttonNumber: 3);
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
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).TeamsValueZero();
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
