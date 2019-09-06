# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSyslogServersModel Model.
  class UpdateNetworkSyslogServersModel < BaseModel
    # A list of the syslog servers for this network
    # @return [List of ServerModel]
    attr_accessor :servers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['servers'] = 'servers'
      @_hash
    end

    def initialize(servers = nil)
      @servers = servers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      servers = nil
      unless hash['servers'].nil?
        servers = []
        hash['servers'].each do |structure|
          servers << (ServerModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSyslogServersModel.new(servers)
    end
  end
end
