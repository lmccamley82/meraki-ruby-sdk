# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSnmpSettingsModel Model.
  class UpdateNetworkSnmpSettingsModel < BaseModel
    # The type of SNMP access. Can be one of 'none' (disabled), 'community'
    # (V1/V2c), or 'users' (V3).
    # @return [Access1Enum]
    attr_accessor :access

    # The SNMP community string. Only relevant if 'access' is set to
    # 'community'.
    # @return [String]
    attr_accessor :community_string

    # The list of SNMP users. Only relevant if 'access' is set to 'users'.
    # @return [List of UserModel]
    attr_accessor :users

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access'] = 'access'
      @_hash['community_string'] = 'communityString'
      @_hash['users'] = 'users'
      @_hash
    end

    def initialize(access = nil,
                   community_string = nil,
                   users = nil)
      @access = access
      @community_string = community_string
      @users = users
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access = hash['access']
      community_string = hash['communityString']
      # Parameter is an array, so we need to iterate through it
      users = nil
      unless hash['users'].nil?
        users = []
        hash['users'].each do |structure|
          users << (UserModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSnmpSettingsModel.new(access,
                                         community_string,
                                         users)
    end
  end
end
