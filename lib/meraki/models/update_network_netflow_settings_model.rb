# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkNetflowSettingsModel Model.
  class UpdateNetworkNetflowSettingsModel < BaseModel
    # Boolean indicating whether NetFlow traffic reporting is enabled (true) or
    # disabled (false).
    # @return [Boolean]
    attr_accessor :reporting_enabled

    # The IPv4 address of the NetFlow collector.
    # @return [String]
    attr_accessor :collector_ip

    # The port that the NetFlow collector will be listening on.
    # @return [Integer]
    attr_accessor :collector_port

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reporting_enabled'] = 'reportingEnabled'
      @_hash['collector_ip'] = 'collectorIp'
      @_hash['collector_port'] = 'collectorPort'
      @_hash
    end

    def initialize(reporting_enabled = nil,
                   collector_ip = nil,
                   collector_port = nil)
      @reporting_enabled = reporting_enabled
      @collector_ip = collector_ip
      @collector_port = collector_port
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      reporting_enabled = hash['reportingEnabled']
      collector_ip = hash['collectorIp']
      collector_port = hash['collectorPort']

      # Create object from extracted values.
      UpdateNetworkNetflowSettingsModel.new(reporting_enabled,
                                            collector_ip,
                                            collector_port)
    end
  end
end
