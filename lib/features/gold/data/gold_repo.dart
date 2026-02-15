import 'dart:developer';

import 'package:goldy/core/networking/api_error_handler.dart';
import 'package:goldy/core/networking/api_result.dart';
import 'package:goldy/core/services/api_service.dart';

import '../../../core/models/metal_model.dart';

class GoldRepo {
  final ApiService apiService;

  GoldRepo({required this.apiService});

  Future<ApiResult<MetalModel>> getGoldData() async {
    try {
      final response = await apiService.getGoldData();
      return ApiResult.success(response);
    } catch (error) {
      log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
