# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SplashLoginAttemptsController
  class SplashLoginAttemptsController < BaseController
    @instance = SplashLoginAttemptsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the splash login attempts for a network
    # @param [String] network_id Required parameter: Example:
    # @param [SsidNumberEnum] ssid_number Optional parameter: Only return the
    # login attempts for the specified SSID
    # @param [String] login_identifier Optional parameter: The username, email,
    # or phone number used during login
    # @param [Integer] timespan Optional parameter: The timespan, in seconds,
    # for the login attempts. The period will be from [timespan] seconds ago
    # until now. The maximum timespan is 3 months
    # @return Mixed response from the API call
    def get_network_splash_login_attempts(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/splashLoginAttempts'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'ssidNumber' => options['ssid_number'],
          'loginIdentifier' => options['login_identifier'],
          'timespan' => options['timespan']
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body) unless
        _context.response.raw_body.nil? ||
        _context.response.raw_body.to_s.strip.empty?
      decoded
    end
  end
end
