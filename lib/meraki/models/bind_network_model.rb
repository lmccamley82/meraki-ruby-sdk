# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # BindNetworkModel Model.
  class BindNetworkModel < BaseModel
    # The ID of the template to which the network should be bound.
    # @return [String]
    attr_accessor :config_template_id

    # Optional boolean indicating whether the network's switches should
    # automatically bind to profiles of the same model. Defaults to false if
    # left unspecified. This option only affects switch networks and switch
    # templates. Auto-bind is not valid unless the switch template has at least
    # one profile and has at most one profile per switch model.
    # @return [Boolean]
    attr_accessor :auto_bind

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['config_template_id'] = 'configTemplateId'
      @_hash['auto_bind'] = 'autoBind'
      @_hash
    end

    def initialize(config_template_id = nil,
                   auto_bind = nil)
      @config_template_id = config_template_id
      @auto_bind = auto_bind
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      config_template_id = hash['configTemplateId']
      auto_bind = hash['autoBind']

      # Create object from extracted values.
      BindNetworkModel.new(config_template_id,
                           auto_bind)
    end
  end
end
