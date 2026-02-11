import 'package:flutter/material.dart';
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
              onPressed: () {},
              buttonText: "Gold",
              backgroundColor: Colors.amberAccent,
            ),
            SizedBox(height: 20),
            AppTextButton(
              onPressed: () {},
              buttonText: "Silver",
              backgroundColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
