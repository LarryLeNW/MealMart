class ApiResponse<T> {
  final int code;
  final String? message;
  final T? result;

  ApiResponse({this.code = 1000, this.message, this.result});

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return ApiResponse<T>(
      code: json['code'] as int? ?? 1000,
      message: json['message'] as String?,
      result: json['result'] != null ? fromJsonT(json['result']) : null,
    );
  }
}
