# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # BlinkNetworkDeviceLedsModel Model.
  class BlinkNetworkDeviceLedsModel < BaseModel
    # The duration in seconds. Must be between 5 and 120. Default is 20 seconds
    # @return [Integer]
    attr_accessor :duration

    # The period in milliseconds. Must be between 100 and 1000. Default is 160
    # milliseconds
    # @return [Integer]
    attr_accessor :period

    # The duty cycle as the percent active. Must be between 10 and 90. Default
    # is 50.
    # @return [Integer]
    attr_accessor :duty

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['duration'] = 'duration'
      @_hash['period'] = 'period'
      @_hash['duty'] = 'duty'
      @_hash
    end

    def initialize(duration = nil,
                   period = nil,
                   duty = nil)
      @duration = duration
      @period = period
      @duty = duty
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      duration = hash['duration']
      period = hash['period']
      duty = hash['duty']

      # Create object from extracted values.
      BlinkNetworkDeviceLedsModel.new(duration,
                                      period,
                                      duty)
    end
  end
end
