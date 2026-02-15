import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:goldy/core/networking/dio_factory.dart';
import 'package:goldy/core/services/api_service.dart';
import 'package:goldy/features/gold/data/gold_repo.dart';
import 'package:goldy/features/silver/data/silver_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());

  getIt.registerLazySingleton<Dio>(() => getIt<DioFactory>().dio);
  getIt.registerSingleton<ApiService>(ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<SilverRepo>(
    () => SilverRepo(apiService: getIt<ApiService>()),
  );
  getIt.registerLazySingleton<GoldRepo>(
    () => GoldRepo(apiService: getIt<ApiService>()),
  );
}
