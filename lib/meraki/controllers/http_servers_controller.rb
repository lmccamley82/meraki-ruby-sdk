# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # HTTPServersController
  class HTTPServersController < BaseController
    @instance = HTTPServersController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the HTTP servers for a network
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_http_servers(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/httpServers'
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

    # Add an HTTP server to a network
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkHttpServerModel] create_network_http_server Required
    # parameter: Example:
    # @return Mixed response from the API call
    def create_network_http_server(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_http_server' => options['create_network_http_server']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/httpServers'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
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
        parameters: options['create_network_http_server'].to_json
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

    # Send a test webhook for a network
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkHttpServersWebhookTestModel]
    # create_network_http_servers_webhook_test Required parameter: Example:
    # @return Mixed response from the API call
    def create_network_http_servers_webhook_test(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_http_servers_webhook_test' => options['create_network_http_servers_webhook_test']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/httpServers/webhookTests'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
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
        parameters: options['create_network_http_servers_webhook_test'].to_json
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

    # Return the status of a webhook test for a network
    # @param [String] network_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_http_servers_webhook_test(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/httpServers/webhookTests/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'id' => options['id']
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

    # Return an HTTP server for a network
    # @param [String] network_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_http_server(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/httpServers/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'id' => options['id']
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

    # Update an HTTP server
    # @param [String] network_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @param [UpdateNetworkHttpServerModel] update_network_http_server Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def update_network_http_server(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/httpServers/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'id' => options['id']
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
        parameters: options['update_network_http_server'].to_json
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

    # Delete an HTTP server from a network
    # @param [String] network_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @return void response from the API call
    def delete_network_http_server(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/httpServers/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'id' => options['id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
    end
  end
end
