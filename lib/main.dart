import 'package:flutter/material.dart';
import 'package:goldy/core/services/get_it_service.dart';
import 'core/views/goldy_app.dart';

void main() async {
  await setupGetIt();
  runApp(const GoldyApp());
}
