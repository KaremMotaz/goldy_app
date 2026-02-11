import 'package:flutter/material.dart';

import '../routing/app_router.dart';
import '../routing/routes.dart';

class GoldyApp extends StatelessWidget {
  const GoldyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.homeView,
    );
  }
}
