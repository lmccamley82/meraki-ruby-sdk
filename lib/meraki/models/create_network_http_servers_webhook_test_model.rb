# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkHttpServersWebhookTestModel Model.
  class CreateNetworkHttpServersWebhookTestModel < BaseModel
    # The URL where the test webhook will be sent
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash
    end

    def initialize(url = nil)
      @url = url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash['url']

      # Create object from extracted values.
      CreateNetworkHttpServersWebhookTestModel.new(url)
    end
  end
end
