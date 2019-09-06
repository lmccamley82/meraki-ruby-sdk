# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkDeviceWirelessRadioSettingsModel Model.
  class UpdateNetworkDeviceWirelessRadioSettingsModel < BaseModel
    # The ID of an RF profile to assign to the device. If the value of this
    # parameter is null, the appropriate basic RF profile
    # (indoor or outdoor) will be assigned to the device. Assigning an RF
    # profile will clear ALL manually configured overrides
    # on the device (channel width, channel, power).
    # @return [Integer]
    attr_accessor :rf_profile_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rf_profile_id'] = 'rfProfileId'
      @_hash
    end

    def initialize(rf_profile_id = nil)
      @rf_profile_id = rf_profile_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      rf_profile_id = hash['rfProfileId']

      # Create object from extracted values.
      UpdateNetworkDeviceWirelessRadioSettingsModel.new(rf_profile_id)
    end
  end
end
