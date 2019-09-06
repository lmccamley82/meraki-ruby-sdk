# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # PeerModel Model.
  class PeerModel < BaseModel
    # The name of the VPN peer
    # @return [String]
    attr_accessor :name

    # The public IP of the VPN peer
    # @return [String]
    attr_accessor :public_ip

    # The list of the private subnets of the VPN peer
    # @return [List of String]
    attr_accessor :private_subnets

    # Custom IPSec policies for the VPN peer. If not included and a preset has
    # not been chosen, the default preset for IPSec policies will be used.
    # @return [IpsecPoliciesModel]
    attr_accessor :ipsec_policies

    # One of the following available presets: 'default', 'aws', 'azure'. If this
    # is provided, the 'ipsecPolicies' parameter is ignored.
    # @return [String]
    attr_accessor :ipsec_policies_preset

    # The shared secret with the VPN peer
    # @return [String]
    attr_accessor :secret

    # A list of network tags that will connect with this peer. Use ['all'] for
    # all networks. Use ['none'] for no networks. If not included, the default
    # is ['all'].
    # @return [List of String]
    attr_accessor :network_tags

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['public_ip'] = 'publicIp'
      @_hash['private_subnets'] = 'privateSubnets'
      @_hash['ipsec_policies'] = 'ipsecPolicies'
      @_hash['ipsec_policies_preset'] = 'ipsecPoliciesPreset'
      @_hash['secret'] = 'secret'
      @_hash['network_tags'] = 'networkTags'
      @_hash
    end

    def initialize(name = nil,
                   public_ip = nil,
                   private_subnets = nil,
                   secret = nil,
                   ipsec_policies = nil,
                   ipsec_policies_preset = nil,
                   network_tags = nil)
      @name = name
      @public_ip = public_ip
      @private_subnets = private_subnets
      @ipsec_policies = ipsec_policies
      @ipsec_policies_preset = ipsec_policies_preset
      @secret = secret
      @network_tags = network_tags
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      public_ip = hash['publicIp']
      private_subnets = hash['privateSubnets']
      secret = hash['secret']
      ipsec_policies = IpsecPoliciesModel.from_hash(hash['ipsecPolicies']) if
        hash['ipsecPolicies']
      ipsec_policies_preset = hash['ipsecPoliciesPreset']
      network_tags = hash['networkTags']

      # Create object from extracted values.
      PeerModel.new(name,
                    public_ip,
                    private_subnets,
                    secret,
                    ipsec_policies,
                    ipsec_policies_preset,
                    network_tags)
    end
  end
end
