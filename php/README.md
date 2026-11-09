# HTTP Status Code Lookup API - PHP Package

HTTP Status Code Lookup decodes any HTTP status code by returning its standard name and detailed description. Provide a numeric code to inspect its meaning and response behavior across standard ranges, and add details=true for a link to the defining RFC section, plus on paid plans its retry and caching behavior and the headers that go with it.

## Installation

Install via Composer:

```bash
composer require apiverve/httpstatuslookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Httpstatuslookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'code' => 404,
    'details' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Httpstatuslookup\Client;
use APIVerve\Httpstatuslookup\Exceptions\APIException;
use APIVerve\Httpstatuslookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['code' => 404, 'details' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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
    "is_informational": false,
    "registry_name": "Not Found",
    "spec": "RFC 9110, Section 15.5.5",
    "spec_url": "https://www.rfc-editor.org/rfc/rfc9110#section-15.5.5",
    "is_retryable": false,
    "is_cacheable_by_default": true,
    "related_headers": []
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/httpstatuslookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/httpstatuslookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/httpstatuslookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
