# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # PowerExceptionModel Model.
  class PowerExceptionModel < BaseModel
    # Serial number of the switch
    # @return [String]
    attr_accessor :serial

    # Per switch exception (combined, redundant, useNetworkSetting)
    # @return [PowerTypeEnum]
    attr_accessor :power_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['serial'] = 'serial'
      @_hash['power_type'] = 'powerType'
      @_hash
    end

    def initialize(serial = nil,
                   power_type = nil)
      @serial = serial
      @power_type = power_type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      serial = hash['serial']
      power_type = hash['powerType']

      # Create object from extracted values.
      PowerExceptionModel.new(serial,
                              power_type)
    end
  end
end
