/// Response models for the HTTP Status Code Lookup API.

/// API Response wrapper.
class HttpstatuslookupResponse {
  final String status;
  final dynamic error;
  final HttpstatuslookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HttpstatuslookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HttpstatuslookupResponse.fromJson(Map<String, dynamic> json) => HttpstatuslookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HttpstatuslookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the HTTP Status Code Lookup API.

class HttpstatuslookupData {
  num? code;
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
