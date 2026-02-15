import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/services/get_it_service.dart';
import 'package:goldy/features/gold/data/gold_repo.dart';
import 'package:goldy/features/gold/manager/gold_cubit/gold_cubit.dart';
import 'package:goldy/features/gold/presentation/gold_view.dart';
import 'package:goldy/features/silver/data/silver_repo.dart';
import 'package:goldy/features/silver/manager/silver_cubit/silver_cubit.dart';
import 'package:goldy/features/silver/presentation/silver_view.dart';
import '../widgets/app_text_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => GoldCubit(
                        goldRepo: getIt.get<GoldRepo>(),
                      )..getGoldData(),
                      child: const GoldView(),
                    ),
                  ),
                );
              },
              buttonText: "Gold",
              backgroundColor: Colors.amberAccent,
            ),
            SizedBox(height: 20),
            AppTextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => SilverCubit(
                        silverRepo: getIt.get<SilverRepo>(),
                      )..getSilverData(),
                      child: const SilverView(),
                    ),
                  ),
                );
              },
              buttonText: "Silver",
              backgroundColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
