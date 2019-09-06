# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ActionBatchesController
  class ActionBatchesController < BaseController
    @instance = ActionBatchesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Create an action batch
    # @param [String] organization_id Required parameter: Example:
    # @param [CreateOrganizationActionBatchModel]
    # create_organization_action_batch Required parameter: Example:
    # @return Mixed response from the API call
    def create_organization_action_batch(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'create_organization_action_batch' => options['create_organization_action_batch']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/actionBatches'
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
        parameters: options['create_organization_action_batch'].to_json
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

    # Return the list of action batches in the organization
    # @param [String] organization_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_action_batches(organization_id)
      # Validate required parameters.
      validate_parameters(
        'organization_id' => organization_id
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/actionBatches'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => organization_id
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

    # Return an action batch
    # @param [String] organization_id Required parameter: Example:
    # @param [String] action_batch_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_organization_action_batch(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'action_batch_id' => options['action_batch_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/actionBatches/{actionBatchId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'actionBatchId' => options['action_batch_id']
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

    # Delete an action batch
    # @param [String] organization_id Required parameter: Example:
    # @param [String] action_batch_id Required parameter: Example:
    # @return void response from the API call
    def delete_organization_action_batch(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'action_batch_id' => options['action_batch_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/actionBatches/{actionBatchId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'actionBatchId' => options['action_batch_id']
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

    # Update an action batch
    # @param [String] organization_id Required parameter: Example:
    # @param [String] action_batch_id Required parameter: Example:
    # @param [UpdateOrganizationActionBatchModel]
    # update_organization_action_batch Optional parameter: Example:
    # @return Mixed response from the API call
    def update_organization_action_batch(options = {})
      # Validate required parameters.
      validate_parameters(
        'organization_id' => options['organization_id'],
        'action_batch_id' => options['action_batch_id']
      )
      # Prepare query url.
      _path_url = '/organizations/{organizationId}/actionBatches/{actionBatchId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'organizationId' => options['organization_id'],
        'actionBatchId' => options['action_batch_id']
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
        parameters: options['update_organization_action_batch'].to_json
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
