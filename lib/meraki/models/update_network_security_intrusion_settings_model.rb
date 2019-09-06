# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSecurityIntrusionSettingsModel Model.
  class UpdateNetworkSecurityIntrusionSettingsModel < BaseModel
    # Set mode to 'disabled'/'detection'/'prevention' (optional - omitting will
    # leave current config unchanged)
    # @return [String]
    attr_accessor :mode

    # Set the detection ruleset 'connectivity'/'balanced'/'security' (optional -
    # omitting will leave current config unchanged). Default value is 'balanced'
    # if none currently saved
    # @return [String]
    attr_accessor :ids_rulesets

    # Set the included/excluded networks from the intrusion engine (optional -
    # omitting will leave current config unchanged). This is available only in
    # 'passthrough' mode
    # @return [ProtectedNetworksModel]
    attr_accessor :protected_networks

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mode'] = 'mode'
      @_hash['ids_rulesets'] = 'idsRulesets'
      @_hash['protected_networks'] = 'protectedNetworks'
      @_hash
    end

    def initialize(mode = nil,
                   ids_rulesets = nil,
                   protected_networks = nil)
      @mode = mode
      @ids_rulesets = ids_rulesets
      @protected_networks = protected_networks
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mode = hash['mode']
      ids_rulesets = hash['idsRulesets']
      if hash['protectedNetworks']
        protected_networks = ProtectedNetworksModel.from_hash(hash['protectedNetworks'])
      end

      # Create object from extracted values.
      UpdateNetworkSecurityIntrusionSettingsModel.new(mode,
                                                      ids_rulesets,
                                                      protected_networks)
    end
  end
end
