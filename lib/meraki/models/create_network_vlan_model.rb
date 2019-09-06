# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkVlanModel Model.
  class CreateNetworkVlanModel < BaseModel
    # The VLAN ID of the new VLAN (must be between 1 and 4094)
    # @return [String]
    attr_accessor :id

    # The name of the new VLAN
    # @return [String]
    attr_accessor :name

    # The subnet of the VLAN
    # @return [String]
    attr_accessor :subnet

    # The local IP of the appliance on the VLAN
    # @return [String]
    attr_accessor :appliance_ip

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['subnet'] = 'subnet'
      @_hash['appliance_ip'] = 'applianceIp'
      @_hash
    end

    def initialize(id = nil,
                   name = nil,
                   subnet = nil,
                   appliance_ip = nil)
      @id = id
      @name = name
      @subnet = subnet
      @appliance_ip = appliance_ip
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      name = hash['name']
      subnet = hash['subnet']
      appliance_ip = hash['applianceIp']

      # Create object from extracted values.
      CreateNetworkVlanModel.new(id,
                                 name,
                                 subnet,
                                 appliance_ip)
    end
  end
end
