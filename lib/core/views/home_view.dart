import 'package:flutter/material.dart';
import 'package:goldy/features/gold/presentation/gold_view.dart';
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
                  MaterialPageRoute(builder: (context) => const GoldView()),
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
                  MaterialPageRoute(builder: (context) => const SilverView()),
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
