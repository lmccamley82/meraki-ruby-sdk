# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchSettingsModel Model.
  class UpdateNetworkSwitchSettingsModel < BaseModel
    # The use Combined Power as the default behavior of secondary power supplies
    # on supported devices.
    # @return [Boolean]
    attr_accessor :use_combined_power

    # Exceptions on a per switch basis to "useCombinedPower"
    # @return [List of PowerExceptionModel]
    attr_accessor :power_exceptions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['use_combined_power'] = 'useCombinedPower'
      @_hash['power_exceptions'] = 'powerExceptions'
      @_hash
    end

    def initialize(use_combined_power = nil,
                   power_exceptions = nil)
      @use_combined_power = use_combined_power
      @power_exceptions = power_exceptions
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      use_combined_power = hash['useCombinedPower']
      # Parameter is an array, so we need to iterate through it
      power_exceptions = nil
      unless hash['powerExceptions'].nil?
        power_exceptions = []
        hash['powerExceptions'].each do |structure|
          power_exceptions << (PowerExceptionModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSwitchSettingsModel.new(use_combined_power,
                                           power_exceptions)
    end
  end
end
