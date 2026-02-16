# HTTP Status Code Lookup API - Dart/Flutter Client

HTTP Status Code Lookup is a tool for looking up HTTP status code information. It provides descriptions, categories, and common causes for all standard HTTP status codes from 1xx to 5xx.

[![pub package](https://img.shields.io/pub/v/apiverve_httpstatuslookup.svg)](https://pub.dev/packages/apiverve_httpstatuslookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [HTTP Status Code Lookup API](https://apiverve.com/marketplace/httpstatuslookup?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_httpstatuslookup: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_httpstatuslookup/apiverve_httpstatuslookup.dart';

void main() async {
  final client = HttpstatuslookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'code': 404
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "code": 404,
    "name": "Not Found",
    "description": "The requested resource could not be found",
    "category": "Client Error",
    "is_error": true,
    "is_success": false,
    "is_redirect": false,
    "is_informational": false
  }
}
```

## API Reference

- **API Home:** [HTTP Status Code Lookup API](https://apiverve.com/marketplace/httpstatuslookup?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/httpstatuslookup](https://docs.apiverve.com/ref/httpstatuslookup?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
