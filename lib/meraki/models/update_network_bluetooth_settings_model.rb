# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkBluetoothSettingsModel Model.
  class UpdateNetworkBluetoothSettingsModel < BaseModel
    # Whether APs will scan for Bluetooth enabled clients. (true, false)
    # @return [Boolean]
    attr_accessor :scanning_enabled

    # Whether APs will advertise beacons. (true, false)
    # @return [Boolean]
    attr_accessor :advertising_enabled

    # The UUID to be used in the beacon identifier.
    # @return [String]
    attr_accessor :uuid

    # The way major and minor number should be assigned to nodes in the network.
    # ('Unique', 'Non-unique')
    # @return [MajorMinorAssignmentModeEnum]
    attr_accessor :major_minor_assignment_mode

    # The major number to be used in the beacon identifier. Only valid in
    # 'Non-unique' mode.
    # @return [Integer]
    attr_accessor :major

    # The minor number to be used in the beacon identifier. Only valid in
    # 'Non-unique' mode.
    # @return [Integer]
    attr_accessor :minor

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['scanning_enabled'] = 'scanningEnabled'
      @_hash['advertising_enabled'] = 'advertisingEnabled'
      @_hash['uuid'] = 'uuid'
      @_hash['major_minor_assignment_mode'] = 'majorMinorAssignmentMode'
      @_hash['major'] = 'major'
      @_hash['minor'] = 'minor'
      @_hash
    end

    def initialize(scanning_enabled = nil,
                   advertising_enabled = nil,
                   uuid = nil,
                   major_minor_assignment_mode = nil,
                   major = nil,
                   minor = nil)
      @scanning_enabled = scanning_enabled
      @advertising_enabled = advertising_enabled
      @uuid = uuid
      @major_minor_assignment_mode = major_minor_assignment_mode
      @major = major
      @minor = minor
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      scanning_enabled = hash['scanningEnabled']
      advertising_enabled = hash['advertisingEnabled']
      uuid = hash['uuid']
      major_minor_assignment_mode = hash['majorMinorAssignmentMode']
      major = hash['major']
      minor = hash['minor']

      # Create object from extracted values.
      UpdateNetworkBluetoothSettingsModel.new(scanning_enabled,
                                              advertising_enabled,
                                              uuid,
                                              major_minor_assignment_mode,
                                              major,
                                              minor)
    end
  end
end
