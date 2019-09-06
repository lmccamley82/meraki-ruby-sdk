# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SwitchProfilesController
  class SwitchProfilesController < BaseController
    @instance = SwitchProfilesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # List the switch profiles for your switch template configuration
    # @param [String] organization_id Required parameter: Example:
    # @param [String] config_template_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_config_template_switch_profiles(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'config_template_id' => options['config_template_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/configTemplates/{configTemplateId}/switchProfiles'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'configTemplateId' => options['config_template_id']
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
  end
end
