# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkFirewalledServiceModel Model.
  class UpdateNetworkFirewalledServiceModel < BaseModel
    # A string indicating the rule for which IPs are allowed to use the
    # specified service. Acceptable values are "blocked" (no remote IPs can
    # access the service), "restricted" (only whitelisted IPs can access the
    # service), and "unrestriced" (any remote IP can access the service). This
    # field is required
    # @return [String]
    attr_accessor :access

    # An array of whitelisted IPs that can access the service. This field is
    # required if "access" is set to "restricted". Otherwise this field is
    # ignored
    # @return [List of String]
    attr_accessor :allowed_ips

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access'] = 'access'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash
    end

    def initialize(access = nil,
                   allowed_ips = nil,
                   additional_properties = {})
      @access = access
      @allowed_ips = allowed_ips

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access = hash['access']
      allowed_ips = hash['allowedIps']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      UpdateNetworkFirewalledServiceModel.new(access,
                                              allowed_ips,
                                              hash)
    end
  end
end
