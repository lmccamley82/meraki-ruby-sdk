# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Utility class for custom header authorization.
  class CustomHeaderAuth
    # Add custom authentication to the request.
    # @param [HttpRequest] The HttpRequest object to which authentication will
    # be added.
    def self.apply(http_request)
      http_request.add_header('X-Cisco-Meraki-API-Key', Configuration.x_cisco_meraki_api_key)
    end
  end
end
