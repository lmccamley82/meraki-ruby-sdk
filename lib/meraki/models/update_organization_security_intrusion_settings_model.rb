# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationSecurityIntrusionSettingsModel Model.
  class UpdateOrganizationSecurityIntrusionSettingsModel < BaseModel
    # Sets a list of specific SNORT® signatures to whitelist
    # @return [List of WhitelistedRuleModel]
    attr_accessor :whitelisted_rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['whitelisted_rules'] = 'whitelistedRules'
      @_hash
    end

    def initialize(whitelisted_rules = nil)
      @whitelisted_rules = whitelisted_rules
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      whitelisted_rules = nil
      unless hash['whitelistedRules'].nil?
        whitelisted_rules = []
        hash['whitelistedRules'].each do |structure|
          whitelisted_rules << (WhitelistedRuleModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateOrganizationSecurityIntrusionSettingsModel.new(whitelisted_rules)
    end
  end
end
