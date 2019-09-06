# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkSmAppPolarisModel Model.
  class CreateNetworkSmAppPolarisModel < BaseModel
    # The scope (one of all, none, automatic, withAny, withAll, withoutAny, or
    # withoutAll) and a set of tags of the devices to be assigned
    # @return [String]
    attr_accessor :scope

    # The manifest URL of the Polaris app (one of manifestUrl and bundleId must
    # be provided)
    # @return [String]
    attr_accessor :manifest_url

    # The bundleId of the Polaris app (one of manifestUrl and bundleId must be
    # provided)
    # @return [String]
    attr_accessor :bundle_id

    # (optional) Whether or not SM should auto-install this app (one of true or
    # false). False by default.
    # @return [Boolean]
    attr_accessor :prevent_auto_install

    # (optional) Whether or not the app should use VPP by device assignment (one
    # of true or false). False by default.
    # @return [Boolean]
    attr_accessor :uses_vpp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['scope'] = 'scope'
      @_hash['manifest_url'] = 'manifestUrl'
      @_hash['bundle_id'] = 'bundleId'
      @_hash['prevent_auto_install'] = 'preventAutoInstall'
      @_hash['uses_vpp'] = 'usesVPP'
      @_hash
    end

    def initialize(scope = nil,
                   manifest_url = nil,
                   bundle_id = nil,
                   prevent_auto_install = nil,
                   uses_vpp = nil)
      @scope = scope
      @manifest_url = manifest_url
      @bundle_id = bundle_id
      @prevent_auto_install = prevent_auto_install
      @uses_vpp = uses_vpp
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      scope = hash['scope']
      manifest_url = hash['manifestUrl']
      bundle_id = hash['bundleId']
      prevent_auto_install = hash['preventAutoInstall']
      uses_vpp = hash['usesVPP']

      # Create object from extracted values.
      CreateNetworkSmAppPolarisModel.new(scope,
                                         manifest_url,
                                         bundle_id,
                                         prevent_auto_install,
                                         uses_vpp)
    end
  end
end
