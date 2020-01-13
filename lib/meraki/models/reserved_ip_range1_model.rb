# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ReservedIpRange1Model Model.
  class ReservedIpRange1Model < BaseModel
    # The first IP in the reserved range
    # @return [String]
    attr_accessor :start

    # The last IP in the reserved range
    # @return [String]
    attr_accessor :mend

    # A text comment for the reserved range
    # @return [String]
    attr_accessor :comment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start'] = 'start'
      @_hash['mend'] = 'end'
      @_hash['comment'] = 'comment'
      @_hash
    end

    def initialize(start = nil,
                   mend = nil,
                   comment = nil)
      @start = start
      @mend = mend
      @comment = comment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start = hash['start']
      mend = hash['end']
      comment = hash['comment']

      # Create object from extracted values.
      ReservedIpRange1Model.new(start,
                                mend,
                                comment)
    end
  end
end
