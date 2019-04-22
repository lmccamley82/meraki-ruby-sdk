# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Network2Model Model.
  class Network2Model < BaseModel
    # The network ID
    # @return [String]
    attr_accessor :id

    # The privilege of the SAML administrator on the network
    # @return [String]
    attr_accessor :access

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['access'] = 'access'
      @_hash
    end

    def initialize(id = nil,
                   access = nil,
                   additional_properties = {})
      @id = id
      @access = access

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      access = hash['access']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Network2Model.new(id,
                        access,
                        hash)
    end
  end
end
