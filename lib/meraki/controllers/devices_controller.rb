# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # DevicesController
  class DevicesController < BaseController
    @instance = DevicesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the devices in a network
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_devices(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices'
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

    # Claim a device into a network
    # @param [String] network_id Required parameter: Example:
    # @param [ClaimNetworkDevicesModel] claim_network_devices Required
    # parameter: Example:
    # @return void response from the API call
    def claim_network_devices(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'claim_network_devices' => options['claim_network_devices']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/claim'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: options['claim_network_devices'].to_json
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
    end

    # Return a single device
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_device(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}'
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

    # Update the attributes of a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [UpdateNetworkDeviceModel] update_network_device Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def update_network_device(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: options['update_network_device'].to_json
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

    # Blink the LEDs on a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [BlinkNetworkDeviceLedsModel] blink_network_device_leds Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def blink_network_device_leds(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/blinkLeds'
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
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: options['blink_network_device_leds'].to_json
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

    # List LLDP and CDP information for a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [Integer] timespan Optional parameter: The timespan for which LLDP
    # and CDP information will be fetched. Must be in seconds and less than or
    # equal to a month (2592000 seconds). LLDP and CDP information is sent to
    # the Meraki dashboard every 10 minutes. In instances where this LLDP and
    # CDP information matches an existing entry in the Meraki dashboard, the
    # data is updated once every two hours. Meraki recommends querying LLDP and
    # CDP information at an interval slightly greater than two hours, to ensure
    # that unchanged CDP / LLDP information can be queried consistently.
    # @return Mixed response from the API call
    def get_network_device_lldp_cdp(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/lldp_cdp'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'serial' => options['serial']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
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

    # Get the uplink loss percentage and latency in milliseconds for a wired
    # network device.
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @param [String] ip Required parameter: The destination IP used to obtain
    # the requested stats. This is required.
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 365 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 31 days after t0.
    # @param [Integer] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 31 days. The default is 1 day.
    # @param [Integer] resolution Optional parameter: The time resolution in
    # seconds for returned data. The valid resolutions are: 60, 600, 3600,
    # 86400. The default is 60.
    # @param [String] uplink Optional parameter: The WAN uplink used to obtain
    # the requested stats. Valid uplinks are wan1, wan2, cellular. The default
    # is wan1.
    # @return Mixed response from the API call
    def get_network_device_loss_and_latency_history(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial'],
        'ip' => options['ip']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/lossAndLatencyHistory'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'serial' => options['serial']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'ip' => options['ip'],
          't0' => options['t0'],
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'resolution' => options['resolution'],
          'uplink' => options['uplink']
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

    # Return the performance score for a single device. Only primary MX devices
    # supported. If no data is available, a 204 error code is returned.
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_device_performance(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/performance'
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

    # Reboot a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def reboot_network_device(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/reboot'
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
      _request = @http_client.post(
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

    # Remove a single device
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @return void response from the API call
    def remove_network_device(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/remove'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'serial' => options['serial']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
    end

    # Return the uplink information for a device.
    # @param [String] network_id Required parameter: Example:
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_device_uplink(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/devices/{serial}/uplink'
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

    # List the devices in an organization
    # @param [String] organization_id Required parameter: Example:
    # @param [Integer] per_page Optional parameter: The number of entries per
    # page returned. Acceptable range is 3 - 1000. Default is 1000.
    # @param [String] starting_after Optional parameter: A token used by the
    # server to indicate the start of the page. Often this is a timestamp or an
    # ID but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, prev, or next page in
    # the HTTP Link header should define it.
    # @param [String] ending_before Optional parameter: A token used by the
    # server to indicate the end of the page. Often this is a timestamp or an ID
    # but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, prev, or next page in
    # the HTTP Link header should define it.
    # @return Mixed response from the API call
    def get_organization_devices(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/devices'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'perPage' => options['per_page'],
          'startingAfter' => options['starting_after'],
          'endingBefore' => options['ending_before']
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
