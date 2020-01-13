# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # An object describing the bandwidth settings for your rule.
  class PerClientBandwidthLimitsModel < BaseModel
    # How bandwidth limits are applied by your rule. Can be one of 'network
    # default', 'ignore' or 'custom'.
    # @return [String]
    attr_accessor :settings

    # The bandwidth limits object, specifying the upload ('limitUp') and
    # download ('limitDown') speed in Kbps. These are only enforced if
    # 'settings' is set to 'custom'.
    # @return [BandwidthLimits2Model]
    attr_accessor :bandwidth_limits

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['settings'] = 'settings'
      @_hash['bandwidth_limits'] = 'bandwidthLimits'
      @_hash
    end

    def initialize(settings = nil,
                   bandwidth_limits = nil)
      @settings = settings
      @bandwidth_limits = bandwidth_limits
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      settings = hash['settings']
      if hash['bandwidthLimits']
        bandwidth_limits = BandwidthLimits2Model.from_hash(hash['bandwidthLimits'])
      end

      # Create object from extracted values.
      PerClientBandwidthLimitsModel.new(settings,
                                        bandwidth_limits)
    end
  end
end
