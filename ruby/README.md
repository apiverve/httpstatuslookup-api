# HTTP Status Code Lookup API - Ruby Gem

HTTP Status Code Lookup decodes any HTTP status code by returning its standard name and detailed description. Provide a numeric code to inspect its meaning and response behavior across standard ranges.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_httpstatuslookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_httpstatuslookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_httpstatuslookup'

# Initialize the client
client = APIVerve::Httpstatuslookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ code: 404 })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ code: 404 })
  puts response["data"]
rescue APIVerve::Httpstatuslookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Httpstatuslookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Httpstatuslookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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
    "is_informational": false
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/httpstatuslookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/httpstatuslookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/httpstatuslookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
