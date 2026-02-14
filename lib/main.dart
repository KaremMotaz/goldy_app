import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/services/api_service.dart';
import 'package:goldy/features/gold/data/gold_repo.dart';
import 'package:goldy/features/gold/manager/gold_cubit/gold_cubit.dart';
import 'package:goldy/features/silver/data/silver_repo.dart';
import 'package:goldy/features/silver/manager/silver_cubit/silver_cubit.dart';
import 'core/views/goldy_app.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GoldCubit(goldRepo: GoldRepo(apiService: ApiService(Dio()))),
        ),
        BlocProvider(
          create: (context) => SilverCubit(
            silverRepo: SilverRepo(apiService: ApiService(Dio())),
          ),
        ),
      ],
      child: const GoldyApp(),
    ),
  );
}
