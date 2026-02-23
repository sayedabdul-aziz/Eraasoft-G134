import 'package:counter_with_cubit/counter/bloc/counter_bloc.dart';
import 'package:counter_with_cubit/counter/bloc/counter_bloc_state.dart';
import 'package:counter_with_cubit/counter/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        body: BlocConsumer<CounterBloc, CounterBlocState>(
          listener: (context, state) {
            if (state is LoginSuccessState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Login Success')));
            } else if (state is CounterUpdateState) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Counter Update')));
            }
          },
          builder: (context, state) {
            var bloc = context.read<CounterBloc>();
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bloc.counter.toString(),
                    style: const TextStyle(fontSize: 50),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.red,
                        onPressed: () {
                          bloc.add(AddEvent());
                        },
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(width: 20),
                      FloatingActionButton(
                        elevation: 0,
                        onPressed: () {
                          bloc.add(RemoveEvent());
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  if (state is LoginLoadingState) CircularProgressIndicator(),
                  if (state is! LoginLoadingState)
                    ElevatedButton(
                      onPressed: () {
                        bloc.add(LoginEvent());
                        // cubit.login()
                      },
                      child: const Text('Login'),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
