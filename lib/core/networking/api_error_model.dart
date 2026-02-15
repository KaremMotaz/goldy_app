class ApiErrorModel {
  final String message;
  final List<String>? details;

  ApiErrorModel({required this.message, this.details});

  factory ApiErrorModel.fromJson({required String error}) {


    return ApiErrorModel(
      message: error.isNotEmpty ? error : "An unknown error occurred",
      details: error.isNotEmpty ? [error] : null,
    );
  }
}
