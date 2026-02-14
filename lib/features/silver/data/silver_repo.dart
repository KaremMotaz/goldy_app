import 'package:goldy/core/models/metal_model.dart';
import 'package:goldy/core/networking/api_error_handler.dart';
import 'package:goldy/core/services/api_service.dart';
import '../../../core/networking/api_result.dart';

class SilverRepo {
  final ApiService apiService;

  SilverRepo({required this.apiService});

  Future<ApiResult<MetalModel>> getSilverData() async {
    try {
      final response = await apiService.getSilverData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
