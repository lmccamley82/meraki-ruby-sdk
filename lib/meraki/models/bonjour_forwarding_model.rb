# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The Bonjour settings for your group policy. Only valid if your network has a
  # wireless configuration.
  class BonjourForwardingModel < BaseModel
    # How Bonjour rules are applied. Can be 'network default', 'ignore' or
    # 'custom'.
    # @return [Settings6Enum]
    attr_accessor :settings

    # A list of the Bonjour forwarding rules for your group policy. If
    # 'settings' is set to 'custom', at least one rule must be specified.
    # @return [List of Rule1Model]
    attr_accessor :rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['settings'] = 'settings'
      @_hash['rules'] = 'rules'
      @_hash
    end

    def initialize(settings = nil,
                   rules = nil)
      @settings = settings
      @rules = rules
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      settings = hash['settings']
      # Parameter is an array, so we need to iterate through it
      rules = nil
      unless hash['rules'].nil?
        rules = []
        hash['rules'].each do |structure|
          rules << (Rule1Model.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      BonjourForwardingModel.new(settings,
                                 rules)
    end
  end
end
