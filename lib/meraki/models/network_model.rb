# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # NetworkModel Model.
  class NetworkModel < BaseModel
    # The network ID
    # @return [String]
    attr_accessor :id

    # The privilege of the dashboard administrator on the network
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
                   access = nil)
      @id = id
      @access = access
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      access = hash['access']

      # Create object from extracted values.
      NetworkModel.new(id,
                       access)
    end
  end
end
