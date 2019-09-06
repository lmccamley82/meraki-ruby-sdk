# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkPiiRequestModel Model.
  class CreateNetworkPiiRequestModel < BaseModel
    # One of "delete" or "restrict processing"
    # @return [Type5Enum]
    attr_accessor :type

    # The datasets related to the provided key that should be deleted. Only
    # applies to "delete" requests. The value "all" will be expanded to all
    # datasets applicable to this type. The datasets by applicable to each type
    # are: mac (usage, events, traffic), email (users, loginAttempts), username
    # (users, loginAttempts), bluetoothMac (client, connectivity), smDeviceId
    # (device), smUserId (user)
    # @return [List of String]
    attr_accessor :datasets

    # The username of a network log in. Only applies to "delete" requests.
    # @return [String]
    attr_accessor :username

    # The email of a network user account. Only applies to "delete" requests.
    # @return [String]
    attr_accessor :email

    # The MAC of a network client device. Applies to both "restrict processing"
    # and "delete" requests.
    # @return [String]
    attr_accessor :mac

    # The sm_device_id of a Systems Manager device. The only way to "restrict
    # processing" or "delete" a Systems Manager device. Must include "device" in
    # the dataset for a "delete" request to destroy the device.
    # @return [String]
    attr_accessor :sm_device_id

    # The sm_user_id of a Systems Manager user. The only way to "restrict
    # processing" or "delete" a Systems Manager user. Must include "user" in the
    # dataset for a "delete" request to destroy the user.
    # @return [String]
    attr_accessor :sm_user_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['datasets'] = 'datasets'
      @_hash['username'] = 'username'
      @_hash['email'] = 'email'
      @_hash['mac'] = 'mac'
      @_hash['sm_device_id'] = 'smDeviceId'
      @_hash['sm_user_id'] = 'smUserId'
      @_hash
    end

    def initialize(type = nil,
                   datasets = nil,
                   username = nil,
                   email = nil,
                   mac = nil,
                   sm_device_id = nil,
                   sm_user_id = nil)
      @type = type
      @datasets = datasets
      @username = username
      @email = email
      @mac = mac
      @sm_device_id = sm_device_id
      @sm_user_id = sm_user_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      datasets = hash['datasets']
      username = hash['username']
      email = hash['email']
      mac = hash['mac']
      sm_device_id = hash['smDeviceId']
      sm_user_id = hash['smUserId']

      # Create object from extracted values.
      CreateNetworkPiiRequestModel.new(type,
                                       datasets,
                                       username,
                                       email,
                                       mac,
                                       sm_device_id,
                                       sm_user_id)
    end
  end
end
