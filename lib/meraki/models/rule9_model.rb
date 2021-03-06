# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule9Model Model.
  class Rule9Model < BaseModel
    # A descriptive name for the rule
    # @return [String]
    attr_accessor :name

    # The IP address of the server or device that hosts the internal resource
    # that you wish to make available on the WAN
    # @return [String]
    attr_accessor :lan_ip

    # The physical WAN interface on which the traffic will arrive ('internet1'
    # or, if available, 'internet2' or 'both')
    # @return [Uplink3Enum]
    attr_accessor :uplink

    # A port or port ranges that will be forwarded to the host on the LAN
    # @return [String]
    attr_accessor :public_port

    # A port or port ranges that will receive the forwarded traffic from the WAN
    # @return [String]
    attr_accessor :local_port

    # An array of ranges of WAN IP addresses that are allowed to make inbound
    # connections on the specified ports or port ranges (or any)
    # @return [List of String]
    attr_accessor :allowed_ips

    # TCP or UDP
    # @return [Protocol5Enum]
    attr_accessor :protocol

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['lan_ip'] = 'lanIp'
      @_hash['uplink'] = 'uplink'
      @_hash['public_port'] = 'publicPort'
      @_hash['local_port'] = 'localPort'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash['protocol'] = 'protocol'
      @_hash
    end

    def initialize(lan_ip = nil,
                   public_port = nil,
                   local_port = nil,
                   allowed_ips = nil,
                   protocol = nil,
                   name = nil,
                   uplink = nil)
      @name = name
      @lan_ip = lan_ip
      @uplink = uplink
      @public_port = public_port
      @local_port = local_port
      @allowed_ips = allowed_ips
      @protocol = protocol
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      lan_ip = hash['lanIp']
      public_port = hash['publicPort']
      local_port = hash['localPort']
      allowed_ips = hash['allowedIps']
      protocol = hash['protocol']
      name = hash['name']
      uplink = hash['uplink']

      # Create object from extracted values.
      Rule9Model.new(lan_ip,
                     public_port,
                     local_port,
                     allowed_ips,
                     protocol,
                     name,
                     uplink)
    end
  end
end
