# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmDeviceFieldsModel Model.
  class UpdateNetworkSmDeviceFieldsModel < BaseModel
    # The wifiMac of the device to be modified.
    # @return [String]
    attr_accessor :wifi_mac

    # The id of the device to be modified.
    # @return [String]
    attr_accessor :id

    # The serial of the device to be modified.
    # @return [String]
    attr_accessor :serial

    # The new fields of the device. Each field of this object is optional.
    # @return [DeviceFieldsModel]
    attr_accessor :device_fields

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wifi_mac'] = 'wifiMac'
      @_hash['id'] = 'id'
      @_hash['serial'] = 'serial'
      @_hash['device_fields'] = 'deviceFields'
      @_hash
    end

    def initialize(device_fields = nil,
                   wifi_mac = nil,
                   id = nil,
                   serial = nil)
      @wifi_mac = wifi_mac
      @id = id
      @serial = serial
      @device_fields = device_fields
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_fields = DeviceFieldsModel.from_hash(hash['deviceFields']) if
        hash['deviceFields']
      wifi_mac = hash['wifiMac']
      id = hash['id']
      serial = hash['serial']

      # Create object from extracted values.
      UpdateNetworkSmDeviceFieldsModel.new(device_fields,
                                           wifi_mac,
                                           id,
                                           serial)
    end
  end
end
