# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SMController
  class SMController < BaseController
    @instance = SMController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Create a new Polaris app
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkSmAppPolarisModel] create_network_sm_app_polaris
    # Required parameter: Example:
    # @return Mixed response from the API call
    def create_network_sm_app_polaris(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_sm_app_polaris' => options['create_network_sm_app_polaris']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/app/polaris'
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
        parameters: options['create_network_sm_app_polaris'].to_json
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

    # Get details for a Cisco Polaris app if it exists
    # @param [String] network_id Required parameter: Example:
    # @param [String] bundle_id Optional parameter: The bundle ID of the app to
    # be found, defaults to com.cisco.ciscosecurity.app
    # @return Mixed response from the API call
    def get_network_sm_app_polaris(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/app/polaris'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'bundleId' => options['bundle_id']
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

    # Update an existing Polaris app
    # @param [String] network_id Required parameter: Example:
    # @param [String] app_id Required parameter: Example:
    # @param [UpdateNetworkSmAppPolarisModel] update_network_sm_app_polaris
    # Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_sm_app_polaris(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'app_id' => options['app_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/app/polaris/{appId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'appId' => options['app_id']
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
        parameters: options['update_network_sm_app_polaris'].to_json
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

    # Delete a Cisco Polaris app
    # @param [String] network_id Required parameter: Example:
    # @param [String] app_id Required parameter: Example:
    # @return Mixed response from the API call
    def delete_network_sm_app_polaris(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'app_id' => options['app_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/app/polaris/{appId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'appId' => options['app_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
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

    # Bypass activation lock attempt
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkSmBypassActivationLockAttemptModel]
    # create_network_sm_bypass_activation_lock_attempt Required parameter:
    # Example:
    # @return Mixed response from the API call
    def create_network_sm_bypass_activation_lock_attempt(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_sm_bypass_activation_lock_attempt' => options['create_network_sm_bypass_activation_lock_attempt']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/bypassActivationLockAttempts'
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
        parameters: options['create_network_sm_bypass_activation_lock_attempt'].to_json
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

    # Bypass activation lock attempt status
    # @param [String] network_id Required parameter: Example:
    # @param [String] attempt_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_bypass_activation_lock_attempt(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'attempt_id' => options['attempt_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/bypassActivationLockAttempts/{attemptId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'attemptId' => options['attempt_id']
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

    # Modify the fields of a device
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkSmDeviceFieldsModel] update_network_sm_device_fields
    # Required parameter: Example:
    # @return Mixed response from the API call
    def update_network_sm_device_fields(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'update_network_sm_device_fields' => options['update_network_sm_device_fields']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/device/fields'
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
        parameters: options['update_network_sm_device_fields'].to_json
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

    # Wipe a device
    # @param [String] network_id Required parameter: Example:
    # @param [WipeNetworkSmDeviceModel] wipe_network_sm_device Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def wipe_network_sm_device(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/device/wipe'
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
        parameters: options['wipe_network_sm_device'].to_json
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

    # Refresh the details of a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return void response from the API call
    def refresh_network_sm_device_details(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/device/{deviceId}/refreshDetails'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # List the devices enrolled in an SM network with various specified fields
    # and filters
    # @param [String] network_id Required parameter: Example:
    # @param [String] fields Optional parameter: Additional fields that will be
    # displayed for each device. Multiple fields can be passed in as comma
    # separated values.     The default fields are: id, name, tags, ssid,
    # wifiMac, osName, systemModel, uuid, and serialNumber. The additional
    # fields are: ip,     systemType, availableDeviceCapacity, kioskAppName,
    # biosVersion, lastConnected, missingAppsCount, userSuppliedAddress,
    # location, lastUser,     ownerEmail, ownerUsername, publicIp, phoneNumber,
    # diskInfoJson, deviceCapacity, isManaged, hadMdm, isSupervised, meid, imei,
    # iccid,     simCarrierNetwork, cellularDataUsed, isHotspotEnabled,
    # createdAt, batteryEstCharge, quarantined, avName, avRunning, asName,
    # fwName,     isRooted, loginRequired, screenLockEnabled, screenLockDelay,
    # autoLoginDisabled, autoTags, hasMdm, hasDesktopAgent,
    # diskEncryptionEnabled,     hardwareEncryptionCaps, passCodeLock,
    # usesHardwareKeystore, and androidSecurityPatchVersion.
    # @param [String] wifi_macs Optional parameter: Filter devices by wifi
    # mac(s). Multiple wifi macs can be passed in as comma separated values.
    # @param [String] serials Optional parameter: Filter devices by serial(s).
    # Multiple serials can be passed in as comma separated values.
    # @param [String] ids Optional parameter: Filter devices by id(s). Multiple
    # ids can be passed in as comma separated values.
    # @param [String] scope Optional parameter: Specify a scope (one of all,
    # none, withAny, withAll, withoutAny, or withoutAll) and a set of tags as
    # comma separated values.
    # @param [Integer] batch_size Optional parameter: Number of devices to
    # return, 1000 is the default as well as the max.
    # @param [String] batch_token Optional parameter: If the network has more
    # devices than the batch size, a batch token will be returned     as a part
    # of the device list. To see the remainder of the devices, pass in the
    # batchToken as a parameter in the next request.     Requests made with the
    # batchToken do not require additional parameters as the batchToken includes
    # the parameters passed in     with the original request. Additional
    # parameters passed in with the batchToken will be ignored.
    # @return Mixed response from the API call
    def get_network_sm_devices(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/devices'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'fields' => options['fields'],
          'wifiMacs' => options['wifi_macs'],
          'serials' => options['serials'],
          'ids' => options['ids'],
          'scope' => options['scope'],
          'batchSize' => options['batch_size'],
          'batchToken' => options['batch_token']
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

    # Force check-in a set of devices
    # @param [String] network_id Required parameter: Example:
    # @param [CheckinNetworkSmDevicesModel] checkin_network_sm_devices Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def checkin_network_sm_devices(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/devices/checkin'
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
        parameters: options['checkin_network_sm_devices'].to_json
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

    # Move a set of devices to a new network
    # @param [String] network_id Required parameter: Example:
    # @param [MoveNetworkSmDevicesModel] move_network_sm_devices Required
    # parameter: Example:
    # @return Mixed response from the API call
    def move_network_sm_devices(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'move_network_sm_devices' => options['move_network_sm_devices']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/devices/move'
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
        parameters: options['move_network_sm_devices'].to_json
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

    # Add, delete, or update the tags of a set of devices
    # @param [String] network_id Required parameter: Example:
    # @param [UpdateNetworkSmDevicesTagsModel] update_network_sm_devices_tags
    # Required parameter: Example:
    # @return Mixed response from the API call
    def update_network_sm_devices_tags(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'update_network_sm_devices_tags' => options['update_network_sm_devices_tags']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/devices/tags'
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
        parameters: options['update_network_sm_devices_tags'].to_json
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

    # Unenroll a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def unenroll_network_sm_device(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/devices/{deviceId}/unenroll'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # Create a new profile containing a Cisco Clarity payload
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkSmProfileClarityModel]
    # create_network_sm_profile_clarity Required parameter: Example:
    # @return Mixed response from the API call
    def create_network_sm_profile_clarity(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_sm_profile_clarity' => options['create_network_sm_profile_clarity']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/clarity'
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
        parameters: options['create_network_sm_profile_clarity'].to_json
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

    # Update an existing profile containing a Cisco Clarity payload
    # @param [String] network_id Required parameter: Example:
    # @param [String] profile_id Required parameter: Example:
    # @param [UpdateNetworkSmProfileClarityModel]
    # update_network_sm_profile_clarity Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_sm_profile_clarity(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'profile_id' => options['profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/clarity/{profileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'profileId' => options['profile_id']
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
        parameters: options['update_network_sm_profile_clarity'].to_json
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

    # Add a Cisco Clarity payload to an existing profile
    # @param [String] network_id Required parameter: Example:
    # @param [String] profile_id Required parameter: Example:
    # @param [AddNetworkSmProfileClarityModel] add_network_sm_profile_clarity
    # Required parameter: Example:
    # @return Mixed response from the API call
    def add_network_sm_profile_clarity(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'profile_id' => options['profile_id'],
        'add_network_sm_profile_clarity' => options['add_network_sm_profile_clarity']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/clarity/{profileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'profileId' => options['profile_id']
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
        parameters: options['add_network_sm_profile_clarity'].to_json
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

    # Get details for a Cisco Clarity payload
    # @param [String] network_id Required parameter: Example:
    # @param [String] profile_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_profile_clarity(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'profile_id' => options['profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/clarity/{profileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'profileId' => options['profile_id']
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

    # Delete a Cisco Clarity payload. Deletes the entire profile if it's empty
    # after removing the payload.
    # @param [String] network_id Required parameter: Example:
    # @param [String] profile_id Required parameter: Example:
    # @return Mixed response from the API call
    def delete_network_sm_profile_clarity(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'profile_id' => options['profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/clarity/{profileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'profileId' => options['profile_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
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

    # Create a new profile containing a Cisco Umbrella payload
    # @param [String] network_id Required parameter: Example:
    # @param [CreateNetworkSmProfileUmbrellaModel]
    # create_network_sm_profile_umbrella Required parameter: Example:
    # @return Mixed response from the API call
    def create_network_sm_profile_umbrella(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'create_network_sm_profile_umbrella' => options['create_network_sm_profile_umbrella']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/umbrella'
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
        parameters: options['create_network_sm_profile_umbrella'].to_json
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

    # Update an existing profile containing a Cisco Umbrella payload
    # @param [String] network_id Required parameter: Example:
    # @param [String] profile_id Required parameter: Example:
    # @param [UpdateNetworkSmProfileUmbrellaModel]
    # update_network_sm_profile_umbrella Optional parameter: Example:
    # @return Mixed response from the API call
    def update_network_sm_profile_umbrella(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'profile_id' => options['profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/umbrella/{profileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'profileId' => options['profile_id']
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
        parameters: options['update_network_sm_profile_umbrella'].to_json
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

    # Add a Cisco Umbrella payload to an existing profile
    # @param [String] network_id Required parameter: Example:
    # @param [String] profile_id Required parameter: Example:
    # @param [AddNetworkSmProfileUmbrellaModel] add_network_sm_profile_umbrella
    # Required parameter: Example:
    # @return Mixed response from the API call
    def add_network_sm_profile_umbrella(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'profile_id' => options['profile_id'],
        'add_network_sm_profile_umbrella' => options['add_network_sm_profile_umbrella']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/umbrella/{profileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'profileId' => options['profile_id']
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
        parameters: options['add_network_sm_profile_umbrella'].to_json
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

    # Get details for a Cisco Umbrella payload
    # @param [String] network_id Required parameter: Example:
    # @param [String] profile_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_profile_umbrella(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'profile_id' => options['profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/umbrella/{profileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'profileId' => options['profile_id']
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

    # Delete a Cisco Umbrella payload. Deletes the entire profile if it's empty
    # after removing the payload
    # @param [String] network_id Required parameter: Example:
    # @param [String] profile_id Required parameter: Example:
    # @return Mixed response from the API call
    def delete_network_sm_profile_umbrella(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'profile_id' => options['profile_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profile/umbrella/{profileId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'profileId' => options['profile_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
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

    # List all the profiles in the network
    # @param [String] network_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_profiles(network_id)
      # Validate required parameters.
      validate_parameters(
        'network_id' => network_id
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/profiles'
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

    # Get the profiles associated with a user
    # @param [String] network_id Required parameter: Example:
    # @param [String] user_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_user_device_profiles(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'user_id' => options['user_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/user/{userId}/deviceProfiles'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'userId' => options['user_id']
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

    # Get a list of softwares associated with a user
    # @param [String] network_id Required parameter: Example:
    # @param [String] user_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_user_softwares(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'user_id' => options['user_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/user/{userId}/softwares'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'userId' => options['user_id']
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

    # List the owners in an SM network with various specified fields and filters
    # @param [String] network_id Required parameter: Example:
    # @param [String] ids Optional parameter: Filter users by id(s). Multiple
    # ids can be passed in as comma separated values.
    # @param [String] usernames Optional parameter: Filter users by username(s).
    # Multiple usernames can be passed in as comma separated values.
    # @param [String] emails Optional parameter: Filter users by email(s).
    # Multiple emails can be passed in as comma separated values.
    # @param [String] scope Optional parameter: Specifiy a scope (one of all,
    # none, withAny, withAll, withoutAny, withoutAll) and a set of tags as comma
    # separated values.
    # @return Mixed response from the API call
    def get_network_sm_users(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/users'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id']
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'ids' => options['ids'],
          'usernames' => options['usernames'],
          'emails' => options['emails'],
          'scope' => options['scope']
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

    # Return the client's daily cellular data usage history. Usage data is in
    # kilobytes.
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_cellular_usage_history(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/{deviceId}/cellularUsageHistory'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # List the certs on a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_certs(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/{deviceId}/certs'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # Get the profiles associated with a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_device_profiles(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/{deviceId}/deviceProfiles'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # List the network adapters of a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_network_adapters(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/{deviceId}/networkAdapters'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # List the restrictions on a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_restrictions(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/{deviceId}/restrictions'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # List the security centers on a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_security_centers(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/{deviceId}/securityCenters'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # Get a list of softwares associated with a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_softwares(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/{deviceId}/softwares'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # List the saved SSID names on a device
    # @param [String] network_id Required parameter: Example:
    # @param [String] device_id Required parameter: Example:
    # @return Mixed response from the API call
    def get_network_sm_wlan_lists(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'device_id' => options['device_id']
      )
      # Prepare query url.
      _path_url = '/networks/{networkId}/sm/{deviceId}/wlanLists'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'networkId' => options['network_id'],
        'deviceId' => options['device_id']
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

    # Lock a set of devices
    # @param [String] network_id Required parameter: Example:
    # @param [LockNetworkSmDevicesModel] lock_network_sm_devices Optional
    # parameter: Example:
    # @return Mixed response from the API call
    def lock_network_sm_devices(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id']
      )
      # Prepare query url.
      _path_url = '/networks/{network_id}/sm/devices/lock'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'network_id' => options['network_id']
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
        parameters: options['lock_network_sm_devices'].to_json
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

    # Returns historical connectivity data (whether a device is regularly
    # checking in to Dashboard).
    # @param [String] network_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @param [String] per_page Optional parameter: The number of entries per
    # page returned
    # @param [String] starting_after Optional parameter: A token used by the
    # server to indicate the start of the page. Often this is a timestamp or an
    # ID but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, next or prev page in
    # the HTTP Link header should define it.
    # @param [String] ending_before Optional parameter: A token used by the
    # server to indicate the end of the page. Often this is a timestamp or an ID
    # but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, next or prev page in
    # the HTTP Link header should define it.
    # @return Mixed response from the API call
    def get_network_sm_connectivity(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/networks/{network_id}/sm/{id}/connectivity'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'network_id' => options['network_id'],
        'id' => options['id']
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

    # Return historical records of various Systems Manager network connection
    # details for desktop devices.
    # @param [String] network_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @param [String] per_page Optional parameter: The number of entries per
    # page returned
    # @param [String] starting_after Optional parameter: A token used by the
    # server to indicate the start of the page. Often this is a timestamp or an
    # ID but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, next or prev page in
    # the HTTP Link header should define it.
    # @param [String] ending_before Optional parameter: A token used by the
    # server to indicate the end of the page. Often this is a timestamp or an ID
    # but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, next or prev page in
    # the HTTP Link header should define it.
    # @return Mixed response from the API call
    def get_network_sm_desktop_logs(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/networks/{network_id}/sm/{id}/desktopLogs'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'network_id' => options['network_id'],
        'id' => options['id']
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

    #     Return historical records of commands sent to Systems Manager devices.
    #     <p>Note that this will include the name of the Dashboard user who
    # initiated the command if it was generated
    #     by a Dashboard admin rather than the automatic behavior of the system;
    # you may wish to filter this out
    #     of any reports.</p>
    # @param [String] network_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @param [String] per_page Optional parameter: The number of entries per
    # page returned
    # @param [String] starting_after Optional parameter: A token used by the
    # server to indicate the start of the page. Often this is a timestamp or an
    # ID but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, next or prev page in
    # the HTTP Link header should define it.
    # @param [String] ending_before Optional parameter: A token used by the
    # server to indicate the end of the page. Often this is a timestamp or an ID
    # but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, next or prev page in
    # the HTTP Link header should define it.
    # @return Mixed response from the API call
    def get_network_sm_device_command_logs(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/networks/{network_id}/sm/{id}/deviceCommandLogs'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'network_id' => options['network_id'],
        'id' => options['id']
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

    # Return historical records of various Systems Manager client metrics for
    # desktop devices.
    # @param [String] network_id Required parameter: Example:
    # @param [String] id Required parameter: Example:
    # @param [String] per_page Optional parameter: The number of entries per
    # page returned
    # @param [String] starting_after Optional parameter: A token used by the
    # server to indicate the start of the page. Often this is a timestamp or an
    # ID but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, next or prev page in
    # the HTTP Link header should define it.
    # @param [String] ending_before Optional parameter: A token used by the
    # server to indicate the end of the page. Often this is a timestamp or an ID
    # but it is not limited to those. This parameter should not be defined by
    # client applications. The link for the first, last, next or prev page in
    # the HTTP Link header should define it.
    # @return Mixed response from the API call
    def get_network_sm_performance_history(options = {})
      # Validate required parameters.
      validate_parameters(
        'network_id' => options['network_id'],
        'id' => options['id']
      )
      # Prepare query url.
      _path_url = '/networks/{network_id}/sm/{id}/performanceHistory'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'network_id' => options['network_id'],
        'id' => options['id']
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
