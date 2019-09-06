# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ActionModel Model.
  class ActionModel < BaseModel
    # Unique identifier for the resource to be acted on
    # @return [String]
    attr_accessor :resource

    # The operation to be used
    # @return [String]
    attr_accessor :operation

    # The body of the action
    # @return [Object]
    attr_accessor :body

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['resource'] = 'resource'
      @_hash['operation'] = 'operation'
      @_hash['body'] = 'body'
      @_hash
    end

    def initialize(resource = nil,
                   operation = nil,
                   body = nil)
      @resource = resource
      @operation = operation
      @body = body
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      resource = hash['resource']
      operation = hash['operation']
      body = hash['body']

      # Create object from extracted values.
      ActionModel.new(resource,
                      operation,
                      body)
    end
  end
end
