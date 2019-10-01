# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # RadiusAccountingServerModel Model.
  class RadiusAccountingServerModel < BaseModel
    # IP address to which the APs will send RADIUS accounting messages
    # @return [String]
    attr_accessor :host

    # Port on the RADIUS server that is listening for accounting messages
    # @return [Integer]
    attr_accessor :port

    # Shared key used to authenticate messages between the APs and RADIUS server
    # @return [String]
    attr_accessor :secret

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['host'] = 'host'
      @_hash['port'] = 'port'
      @_hash['secret'] = 'secret'
      @_hash
    end

    def initialize(host = nil,
                   secret = nil,
                   port = nil)
      @host = host
      @port = port
      @secret = secret
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      host = hash['host']
      secret = hash['secret']
      port = hash['port']

      # Create object from extracted values.
      RadiusAccountingServerModel.new(host,
                                      secret,
                                      port)
    end
  end
end
