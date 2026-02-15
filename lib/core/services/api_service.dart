import 'package:dio/dio.dart';
import 'package:goldy/core/models/metal_model.dart';
import 'package:goldy/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET(ApiConstants.getGold)
  Future<MetalModel> getGoldData();

  @GET(ApiConstants.getSilver)
  Future<MetalModel> getSilverData();
}
