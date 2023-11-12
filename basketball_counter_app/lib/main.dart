import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // if (state is CounterAIncrementState) {
          // teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        // } else {
          // teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        // }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter'),
          ),
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: TextStyle(
                          fontSize: 200,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 1);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      // Spacer(flex: 1,),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 2);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      // Spacer(flex: 1,),
                      SizedBox(
                        height: 16,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'A', buttonNumber: 3);
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Spacer(flex: 12,),
                    ],
                  ),
                  SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 3,
                      // indent: 30,
                      // endIndent: 250,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: TextStyle(
                          fontSize: 200,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 1);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      // Spacer(flex: 1,),
                      SizedBox(
                        height: 16,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 2);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      // Spacer(flex: 1,),
                      SizedBox(
                        height: 16,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 3);
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // Spacer(flex: 12,),
                    ],
                  ),
                ],
              ),
              Spacer(
                flex: 4,
              ),
              // SizedBox(height: 64,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
              ),
              Spacer(
                flex: 8,
              ),
            ],
          ),
        );
      },
    );
  }
}
