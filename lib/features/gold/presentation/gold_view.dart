import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/features/gold/manager/gold_cubit/gold_cubit.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Gold Tracker",
          style: TextStyle(color: Colors.amberAccent),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/gold.jpeg'),
            const SizedBox(height: 20),

            BlocBuilder<GoldCubit, GoldState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),

                  loading: () => const CircularProgressIndicator(),

                  loaded: (data) => Text(
                    "${data.price} USD",
                    style: const TextStyle(
                      fontSize: 26,
                      color: Colors.amberAccent,
                    ),
                  ),

                  error: (error) => Text(
                    error.message,
                    style: const TextStyle(color: Colors.red),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
