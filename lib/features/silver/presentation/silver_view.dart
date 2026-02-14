import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/features/silver/manager/silver_cubit/silver_cubit.dart';


class SilverView extends StatefulWidget {
  const SilverView({super.key});

  @override
  State<SilverView> createState() => _SilverViewState();
}

class _SilverViewState extends State<SilverView> {
  @override
  void initState() {
    super.initState();
    context.read<SilverCubit>().getSilverData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Silver Tracker", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/silver.png'),
            const SizedBox(height: 20),

            BlocBuilder<SilverCubit, SilverState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),

                  loading: () => const CircularProgressIndicator(),

                  loaded: (data) => Text(
                    "${data.price} USD",
                    style: const TextStyle(fontSize: 26, color: Colors.white),
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
