# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule7Model Model.
  class Rule7Model < BaseModel
    # The IP address that will be used to access the internal resource from the
    # WAN
    # @return [String]
    attr_accessor :public_ip

    # The physical WAN interface on which the traffic will arrive ('internet1'
    # or, if available, 'internet2')
    # @return [String]
    attr_accessor :uplink

    # An array of associated forwarding rules
    # @return [List of Object]
    attr_accessor :port_rules

    # A description of the rule
    # @return [String]
    attr_accessor :name

    # 'tcp' or 'udp'
    # @return [String]
    attr_accessor :protocol

    # Destination port of the traffic that is arriving on the WAN
    # @return [String]
    attr_accessor :public_port

    # Local IP address to which traffic will be forwarded
    # @return [String]
    attr_accessor :local_ip

    # Destination port of the forwarded traffic that will be sent from the MX to
    # the specified host on the LAN. If you simply wish to forward the traffic
    # without translating the port, this should be the same as the Public port
    # @return [String]
    attr_accessor :local_port

    # Remote IP addresses or ranges that are permitted to access the internal
    # resource via this port forwarding rule, or 'any'
    # @return [String]
    attr_accessor :allowed_ips

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['public_ip'] = 'publicIp'
      @_hash['uplink'] = 'uplink'
      @_hash['port_rules'] = 'portRules'
      @_hash['name'] = 'name'
      @_hash['protocol'] = 'protocol'
      @_hash['public_port'] = 'publicPort'
      @_hash['local_ip'] = 'localIp'
      @_hash['local_port'] = 'localPort'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash
    end

    def initialize(public_ip = nil,
                   uplink = nil,
                   port_rules = nil,
                   name = nil,
                   protocol = nil,
                   public_port = nil,
                   local_ip = nil,
                   local_port = nil,
                   allowed_ips = nil)
      @public_ip = public_ip
      @uplink = uplink
      @port_rules = port_rules
      @name = name
      @protocol = protocol
      @public_port = public_port
      @local_ip = local_ip
      @local_port = local_port
      @allowed_ips = allowed_ips
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      public_ip = hash['publicIp']
      uplink = hash['uplink']
      port_rules = hash['portRules']
      name = hash['name']
      protocol = hash['protocol']
      public_port = hash['publicPort']
      local_ip = hash['localIp']
      local_port = hash['localPort']
      allowed_ips = hash['allowedIps']

      # Create object from extracted values.
      Rule7Model.new(public_ip,
                     uplink,
                     port_rules,
                     name,
                     protocol,
                     public_port,
                     local_ip,
                     local_port,
                     allowed_ips)
    end
  end
end
