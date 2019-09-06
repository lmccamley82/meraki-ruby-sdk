# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # GenerateNetworkCameraSnapshotModel Model.
  class GenerateNetworkCameraSnapshotModel < BaseModel
    # [optional] The snapshot will be taken from this time on the camera. The
    # timestamp is expected to be in ISO 8601 format. If no timestamp is
    # specified, we will assume current time.
    # @return [String]
    attr_accessor :timestamp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['timestamp'] = 'timestamp'
      @_hash
    end

    def initialize(timestamp = nil)
      @timestamp = timestamp
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      timestamp = hash['timestamp']

      # Create object from extracted values.
      GenerateNetworkCameraSnapshotModel.new(timestamp)
    end
  end
end
