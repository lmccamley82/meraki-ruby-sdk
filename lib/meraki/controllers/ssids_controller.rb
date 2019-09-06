# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SsidsController
  class SsidsController < BaseController
    @instance = SsidsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Return the SSID statuses of an access point
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_device_wireless_status(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/wireless/status'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'serial' => options['serial']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
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

    # List the SSIDs in a network. Supports networks with access points or
    # wireless-enabled security appliances and teleworker gateways.
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_ssids(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/ssids'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => network_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
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

    # Return a single SSID
    # @param [String] network_id Required parameter: Example:
    # @param [String] number Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_ssid(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'number' => options['number']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/ssids/{number}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'number' => options['number']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
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

    # Update the attributes of an SSID
    # @param [String] network_id Required parameter: Example:
    # @param [String] number Required parameter: Example:
    # @param [UpdateNetworkSsidModel] update_network_ssid Optional parameter:
    # Example:
    # @return Mixed response from the API call
    def update_network_ssid(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'number' => options['number']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/ssids/{number}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'number' => options['number']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: options['update_network_ssid'].to_json
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
