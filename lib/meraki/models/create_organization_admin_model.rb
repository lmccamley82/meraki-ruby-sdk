# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateOrganizationAdminModel Model.
  class CreateOrganizationAdminModel < BaseModel
    # The email of the dashboard administrator. This attribute can not be
    # updated.
    # @return [String]
    attr_accessor :email

    # The name of the dashboard administrator
    # @return [String]
    attr_accessor :name

    # The privilege of the dashboard administrator on the organization. Can be
    # one of 'full', 'read-only', 'enterprise' or 'none'
    # @return [OrgAccessEnum]
    attr_accessor :org_access

    # The list of tags that the dashboard administrator has privileges on
    # @return [List of TagModel]
    attr_accessor :tags

    # The list of networks that the dashboard administrator has privileges on
    # @return [List of NetworkModel]
    attr_accessor :networks

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['email'] = 'email'
      @_hash['name'] = 'name'
      @_hash['org_access'] = 'orgAccess'
      @_hash['tags'] = 'tags'
      @_hash['networks'] = 'networks'
      @_hash
    end

    def initialize(email = nil,
                   name = nil,
                   org_access = nil,
                   tags = nil,
                   networks = nil)
      @email = email
      @name = name
      @org_access = org_access
      @tags = tags
      @networks = networks
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      email = hash['email']
      name = hash['name']
      org_access = hash['orgAccess']
      # Parameter is an array, so we need to iterate through it
      tags = nil
      unless hash['tags'].nil?
        tags = []
        hash['tags'].each do |structure|
          tags << (TagModel.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      networks = nil
      unless hash['networks'].nil?
        networks = []
        hash['networks'].each do |structure|
          networks << (NetworkModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CreateOrganizationAdminModel.new(email,
                                       name,
                                       org_access,
                                       tags,
                                       networks)
    end
  end
end
