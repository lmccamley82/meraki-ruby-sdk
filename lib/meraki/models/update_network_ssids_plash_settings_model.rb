# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSsidsPlashSettingsModel Model.
  class UpdateNetworkSsidsPlashSettingsModel < BaseModel
    # [optional] The custom splash URL of the click-through splash page. Note
    # that the URL can be configured without necessarily being used. In order to
    # enable the custom URL, see 'useSplashUrl'
    # @return [String]
    attr_accessor :splash_url

    # [optional] Boolean indicating whether the user will be redirected to the
    # custom splash url. A custom splash URL must be set if this is true. Note
    # that depending on your SSID's access control settings, it may not be
    # possible to use the custom splash URL.
    # @return [Boolean]
    attr_accessor :use_splash_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['splash_url'] = 'splashUrl'
      @_hash['use_splash_url'] = 'useSplashUrl'
      @_hash
    end

    def initialize(splash_url = nil,
                   use_splash_url = nil)
      @splash_url = splash_url
      @use_splash_url = use_splash_url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      splash_url = hash['splashUrl']
      use_splash_url = hash['useSplashUrl']

      # Create object from extracted values.
      UpdateNetworkSsidsPlashSettingsModel.new(splash_url,
                                               use_splash_url)
    end
  end
end
