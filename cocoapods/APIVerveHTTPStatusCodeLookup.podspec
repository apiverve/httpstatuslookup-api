Pod::Spec.new do |s|
  s.name             = 'APIVerveHTTPStatusCodeLookup'
  s.version          = '1.2.3'
  s.summary          = 'HTTP Status Code Lookup decodes any HTTP status code by returning its standard name and detailed description.'
  s.description      = <<-'DESC'
HTTP Status Code Lookup decodes any HTTP status code by returning its standard name and detailed description. Provide a numeric code to inspect its meaning and response behavior across standard ranges.

This iOS/macOS SDK provides a convenient way to access the HTTP Status Code Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/httpstatuslookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/httpstatuslookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveHTTPStatusCodeLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
