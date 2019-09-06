# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # VlansController
  class VlansController < BaseController
    @instance = VlansController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the VLANs for an MX network
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_vlans(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/vlans'
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

    # Add a VLAN
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkVlanModel] create_network_vlan Required parameter:
    # Example:
    # @return Mixed response from the API call
    def create_network_vlan(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_vlan' => options['create_network_vlan']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/vlans'
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
        parameters: options['create_network_vlan'].to_json
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

    # Return a VLAN
    # @param [String] network_id Required parameter: Example:
    # @param [String] vlan_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_vlan(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'vlan_id' => options['vlan_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/vlans/{vlanId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'vlanId' => options['vlan_id']
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

    # Update a VLAN
    # @param [String] network_id Required parameter: Example:
    # @param [String] vlan_id Required parameter: Example:
    # @param [UpdateNetworkVlanModel] update_network_vlan Optional parameter:
    # Example:
    # @return Mixed response from the API call
    def update_network_vlan(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'vlan_id' => options['vlan_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/vlans/{vlanId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'vlanId' => options['vlan_id']
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
        parameters: options['update_network_vlan'].to_json
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

    # Delete a VLAN from a network
    # @param [String] network_id Required parameter: Example:
    # @param [String] vlan_id Required parameter: Example:
    # @return void response from the API call
    def delete_network_vlan(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'vlan_id' => options['vlan_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/vlans/{vlanId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'vlanId' => options['vlan_id']
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

    # Returns the enabled status of VLANs for the network
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_vlans_enabled_state(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/vlansEnabledState'
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

    # Enable/Disable VLANs for the given network
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkVlansEnabledStateModel]
    # update_network_vlans_enabled_state Required parameter: Example:
    # @return Mixed response from the API call
    def update_network_vlans_enabled_state(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'update_network_vlans_enabled_state' => options['update_network_vlans_enabled_state']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/vlansEnabledState'
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
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: options['update_network_vlans_enabled_state'].to_json
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
