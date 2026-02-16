/// Response models for the HTTP Status Code Lookup API.

/// API Response wrapper.
class HttpstatuslookupResponse {
  final String status;
  final dynamic error;
  final HttpstatuslookupData? data;

  HttpstatuslookupResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HttpstatuslookupResponse.fromJson(Map<String, dynamic> json) => HttpstatuslookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HttpstatuslookupData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the HTTP Status Code Lookup API.

class HttpstatuslookupData {
  int? code;
  String? name;
  String? description;
  String? category;
  bool? isError;
  bool? isSuccess;
  bool? isRedirect;
  bool? isInformational;

  HttpstatuslookupData({
    this.code,
    this.name,
    this.description,
    this.category,
    this.isError,
    this.isSuccess,
    this.isRedirect,
    this.isInformational,
  });

  factory HttpstatuslookupData.fromJson(Map<String, dynamic> json) => HttpstatuslookupData(
      code: json['code'],
      name: json['name'],
      description: json['description'],
      category: json['category'],
      isError: json['is_error'],
      isSuccess: json['is_success'],
      isRedirect: json['is_redirect'],
      isInformational: json['is_informational'],
    );
}

class HttpstatuslookupRequest {
  int code;

  HttpstatuslookupRequest({
    required this.code,
  });

  Map<String, dynamic> toJson() => {
      'code': code,
    };
}
