# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # NetworksController
  class NetworksController < BaseController
    @instance = NetworksController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Return a network
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}'
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

    # Update a network
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkModel] update_network Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}'
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
        parameters: options['update_network'].to_json
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

    # Delete a network
    # @param [String] network_id Required parameter: Example:
    # @return void response from the API call
    def delete_network(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => network_id
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

    # List the access policies for this network. Only valid for MS networks.
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_access_policies(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/accessPolicies'
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

    # List Air Marshal scan results from a network
    # @param [String] network_id Required parameter: Example:
    # @param [String] t0 Optional parameter: The beginning of the timespan for
    # the data. The maximum lookback period is 31 days from today.
    # @param [Integer] timespan Optional parameter: The timespan for which the
    # information will be fetched. If specifying timespan, do not specify
    # parameter t0. The value must be in seconds and be less than or equal to 31
    # days. The default is 7 days.
    # @return Mixed response from the API call
    def get_network_air_marshal(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/airMarshal'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          't0' => options['t0'],
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

    # Bind a network to a template.
    # @param [String] network_id Required parameter: Example:
    # @param [BindNetworkModel] bind_network Required parameter: Example:
    # @return void response from the API call
    def bind_network(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'bind_network' => options['bind_network']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/bind'
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
        parameters: options['bind_network'].to_json
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
    end

    # Return the Bluetooth settings for a network. <a
    # href="https://documentation.meraki.com/MR/Bluetooth/Bluetooth_Low_Energy_(
    # BLE)">Bluetooth settings</a> must be enabled on the network.
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_bluetooth_settings(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/bluetoothSettings'
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

    # Update the Bluetooth settings for a network. See the docs page for <a
    # href="https://documentation.meraki.com/MR/Bluetooth/Bluetooth_Low_Energy_(
    # BLE)">Bluetooth settings</a>.
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkBluetoothSettingsModel]
    # update_network_bluetooth_settings Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_bluetooth_settings(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/bluetoothSettings'
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
        parameters: options['update_network_bluetooth_settings'].to_json
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

    # Return the site-to-site VPN settings of a network. Only valid for MX
    # networks.
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_site_to_site_vpn(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/siteToSiteVpn'
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

    # Update the site-to-site VPN settings of a network. Only valid for MX
    # networks in NAT mode.
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkSiteToSiteVpnModel] update_network_site_to_site_vpn
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_site_to_site_vpn(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/siteToSiteVpn'
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
        parameters: options['update_network_site_to_site_vpn'].to_json
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

    # Split a combined network into individual networks for each type of device
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def split_network(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/split'
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

    # The traffic analysis data for this network.
    # <a
    # href="https://documentation.meraki.com/MR/Monitoring_and_Reporting/Hostnam
    # e_Visibility">Traffic Analysis with Hostname Visibility</a> must be
    # enabled on the network.
    # @param [String] network_id Required parameter: Example:
    # @param [String] timespan Required parameter: The timespan for the data.
    # Must be an integer representing a duration in seconds between two hours
    # and one month. (Mandatory.)
    # @param [String] device_type Optional parameter: Filter the data by device
    # type: combined (default), wireless, switch, appliance. When using
    # combined, for each rule the data will come from the device type with the
    # most usage.
    # @return Mixed response from the API call
    def get_network_traffic(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'timespan' => options['timespan']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/traffic'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'timespan' => options['timespan'],
          'deviceType' => options['device_type']
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

    # Unbind a network from a template.
    # @param [String] network_id Required parameter: Example:
    # @return void response from the API call
    def unbind_network(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/unbind'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => network_id
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

    # List the networks in an organization
    # @param [String] organization_id Required parameter: Example:
    # @param [String] config_template_id Optional parameter: An optional
    # parameter that is the ID of a config template. Will return all networks
    # bound to that template.
    # @return Mixed response from the API call
    def get_organization_networks(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/networks'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'configTemplateId' => options['config_template_id']
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

    # Create a network
    # @param [String] organization_id Required parameter: Example:
    # @param [CreateOrganizationNetworkModel] create_organization_network
    # Required parameter: Example:
    # @return Mixed response from the API call
    def create_organization_network(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'create_organization_network' => options['create_organization_network']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/networks'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
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
        parameters: options['create_organization_network'].to_json
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

    # Combine multiple networks into a single network
    # @param [String] organization_id Required parameter: Example:
    # @param [CombineOrganizationNetworksModel] combine_organization_networks
    # Required parameter: Example:
    # @return Mixed response from the API call
    def combine_organization_networks(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'combine_organization_networks' => options['combine_organization_networks']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/networks/combine'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id']
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
        parameters: options['combine_organization_networks'].to_json
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
