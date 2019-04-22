# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmDevicesCheckinModel Model.
  class UpdateNetworkSmDevicesCheckinModel < BaseModel
    # The wifiMacs of the devices to be checked-in.
    # @return [String]
    attr_accessor :wifi_macs

    # The ids of the devices to be checked-in.
    # @return [String]
    attr_accessor :ids

    # The serials of the devices to be checked-in.
    # @return [String]
    attr_accessor :serials

    # The scope (one of all, none, withAny, withAll, withoutAny, or withoutAll)
    # and a set of tags of the devices to be checked-in.
    # @return [String]
    attr_accessor :scope

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wifi_macs'] = 'wifiMacs'
      @_hash['ids'] = 'ids'
      @_hash['serials'] = 'serials'
      @_hash['scope'] = 'scope'
      @_hash
    end

    def initialize(wifi_macs = nil,
                   ids = nil,
                   serials = nil,
                   scope = nil,
                   additional_properties = {})
      @wifi_macs = wifi_macs
      @ids = ids
      @serials = serials
      @scope = scope

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wifi_macs = hash['wifiMacs']
      ids = hash['ids']
      serials = hash['serials']
      scope = hash['scope']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      UpdateNetworkSmDevicesCheckinModel.new(wifi_macs,
                                             ids,
                                             serials,
                                             scope,
                                             hash)
    end
  end
end
