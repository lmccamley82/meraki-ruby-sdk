# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MVSenseController
  class MVSenseController < BaseController
    @instance = MVSenseController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Returns live state from camera of analytics zones
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def get_device_camera_analytics_live(serial)
      # Validate required parameters.
      validate_parameters(
        'serial' => serial
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/camera/analytics/live'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => serial
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

    # Returns an overview of aggregate analytics data for a timespan
    # @param [String] serial Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 365 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 7 days after t0.
    # @param [Integer] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 7 days. The default is 1 hour.
    # @param [ObjectTypeEnum] object_type Optional parameter: [optional] The
    # object type for which analytics will be retrieved. The default object type
    # is person. The available types are [person, vehicle].
    # @return Mixed response from the API call
    def get_device_camera_analytics_overview(options = {})
      # Validate required parameters.
      validate_parameters(
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/camera/analytics/overview'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => options['serial']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          't0' => options['t0'],
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'objectType' => options['object_type']
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

    # Returns most recent record for analytics zones
    # @param [String] serial Required parameter: Example:
    # @param [ObjectTypeEnum] object_type Optional parameter: [optional] The
    # object type for which analytics will be retrieved. The default object type
    # is person. The available types are [person, vehicle].
    # @return Mixed response from the API call
    def get_device_camera_analytics_recent(options = {})
      # Validate required parameters.
      validate_parameters(
        'serial' => options['serial']
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/camera/analytics/recent'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => options['serial']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'objectType' => options['object_type']
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

    # Returns all configured analytic zones for this camera
    # @param [String] serial Required parameter: Example:
    # @return Mixed response from the API call
    def get_device_camera_analytics_zones(serial)
      # Validate required parameters.
      validate_parameters(
        'serial' => serial
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/camera/analytics/zones'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => serial
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

    # Return historical records for analytic zones
    # @param [String] serial Required parameter: Example:
    # @param [String] zone_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 365 days from today.
    # @param [String] t1 Optional parameter: The end of the timespan for the
    # data. t1 can be a maximum of 14 hours after t0.
    # @param [Integer] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameters t0 and t1. The value must be in seconds and be less than or
    # equal to 14 hours. The default is 1 hour.
    # @param [Integer] resolution Optional parameter: The time resolution in
    # seconds for returned data. The valid resolutions are: 60. The default is
    # 60.
    # @param [ObjectTypeEnum] object_type Optional parameter: [optional] The
    # object type for which analytics will be retrieved. The default object type
    # is person. The available types are [person, vehicle].
    # @return Mixed response from the API call
    def get_device_camera_analytics_zone_history(options = {})
      # Validate required parameters.
      validate_parameters(
        'serial' => options['serial'],
        'zone_id' => options['zone_id']
      )
      # Prepare query url.
      _path_url = '/devices/{serial}/camera/analytics/zones/{zoneId}/history'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'serial' => options['serial'],
        'zoneId' => options['zone_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          't0' => options['t0'],
          't1' => options['t1'],
          'timespan' => options['timespan'],
          'resolution' => options['resolution'],
          'objectType' => options['object_type']
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
