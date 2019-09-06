# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkGroupPolicyModel Model.
  class UpdateNetworkGroupPolicyModel < BaseModel
    # The name for your group policy.
    # @return [String]
    attr_accessor :name

    # The schedule for the group policy. Schedules are applied to days of the
    # week.
    # @return [SchedulingModel]
    attr_accessor :scheduling

    # The bandwidth settings for clients bound to your group policy.
    # @return [BandwidthModel]
    attr_accessor :bandwidth

    # The firewall and traffic shaping rules and settings for your policy.
    # @return [FirewallAndTrafficShapingModel]
    attr_accessor :firewall_and_traffic_shaping

    # The content filtering settings for your group policy
    # @return [ContentFilteringModel]
    attr_accessor :content_filtering

    # Whether clients bound to your policy will bypass splash authorization or
    # behave according to the network's rules. Can be one of 'network default'
    # or 'bypass'. Only available if your network has a wireless configuration.
    # @return [SplashAuthSettingsEnum]
    attr_accessor :splash_auth_settings

    # The VLAN tagging settings for your group policy. Only available if your
    # network has a wireless configuration.
    # @return [VlanTaggingModel]
    attr_accessor :vlan_tagging

    # The Bonjour settings for your group policy. Only valid if your network has
    # a wireless configuration.
    # @return [BonjourForwardingModel]
    attr_accessor :bonjour_forwarding

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['scheduling'] = 'scheduling'
      @_hash['bandwidth'] = 'bandwidth'
      @_hash['firewall_and_traffic_shaping'] = 'firewallAndTrafficShaping'
      @_hash['content_filtering'] = 'contentFiltering'
      @_hash['splash_auth_settings'] = 'splashAuthSettings'
      @_hash['vlan_tagging'] = 'vlanTagging'
      @_hash['bonjour_forwarding'] = 'bonjourForwarding'
      @_hash
    end

    def initialize(name = nil,
                   scheduling = nil,
                   bandwidth = nil,
                   firewall_and_traffic_shaping = nil,
                   content_filtering = nil,
                   splash_auth_settings = nil,
                   vlan_tagging = nil,
                   bonjour_forwarding = nil)
      @name = name
      @scheduling = scheduling
      @bandwidth = bandwidth
      @firewall_and_traffic_shaping = firewall_and_traffic_shaping
      @content_filtering = content_filtering
      @splash_auth_settings = splash_auth_settings
      @vlan_tagging = vlan_tagging
      @bonjour_forwarding = bonjour_forwarding
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      scheduling = SchedulingModel.from_hash(hash['scheduling']) if
        hash['scheduling']
      bandwidth = BandwidthModel.from_hash(hash['bandwidth']) if
        hash['bandwidth']
      if hash['firewallAndTrafficShaping']
        firewall_and_traffic_shaping = FirewallAndTrafficShapingModel.from_hash(hash['firewallAndTrafficShaping'])
      end
      if hash['contentFiltering']
        content_filtering = ContentFilteringModel.from_hash(hash['contentFiltering'])
      end
      splash_auth_settings = hash['splashAuthSettings']
      vlan_tagging = VlanTaggingModel.from_hash(hash['vlanTagging']) if
        hash['vlanTagging']
      if hash['bonjourForwarding']
        bonjour_forwarding = BonjourForwardingModel.from_hash(hash['bonjourForwarding'])
      end

      # Create object from extracted values.
      UpdateNetworkGroupPolicyModel.new(name,
                                        scheduling,
                                        bandwidth,
                                        firewall_and_traffic_shaping,
                                        content_filtering,
                                        splash_auth_settings,
                                        vlan_tagging,
                                        bonjour_forwarding)
    end
  end
end
