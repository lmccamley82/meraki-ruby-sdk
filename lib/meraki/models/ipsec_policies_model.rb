# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Custom IPSec policies for the VPN peer. If not included and a preset has not
  # been chosen, the default preset for IPSec policies will be used.
  class IpsecPoliciesModel < BaseModel
    # This is the cipher algorithm to be used in Phase 1. The value should be an
    # array with one of the following algorithms: 'aes256', 'aes192', 'aes128',
    # 'tripledes', 'des'
    # @return [List of String]
    attr_accessor :ike_cipher_algo

    # This is the authentication algorithm to be used in Phase 1. The value
    # should be an array with one of the following algorithms: 'sha1', 'md5'
    # @return [List of String]
    attr_accessor :ike_auth_algo

    # This is the Diffie-Hellman group to be used in Phase 1. The value should
    # be an array with one of the following algorithms: 'group5', 'group2',
    # 'group1'
    # @return [List of String]
    attr_accessor :ike_diffie_hellman_group

    # The lifetime of the Phase 1 SA in seconds.
    # @return [Integer]
    attr_accessor :ike_lifetime

    # This is the cipher algorithms to be used in Phase 2. The value should be
    # an array with one or more of the following algorithms: 'aes256', 'aes192',
    # 'aes128', 'tripledes', 'des', 'null'
    # @return [List of String]
    attr_accessor :child_cipher_algo

    # This is the authentication algorithms to be used in Phase 2. The value
    # should be an array with one of the following algorithms: 'sha1', 'md5'
    # @return [List of String]
    attr_accessor :child_auth_algo

    # This is the Diffie-Hellman group to be used for Perfect Forward Secrecy in
    # Phase 2. The value should be an array with one of the following values:
    # 'disabled', 'group5', 'group2', 'group1'
    # @return [List of String]
    attr_accessor :child_pfs_group

    # The lifetime of the Phase 2 SA in seconds.
    # @return [Integer]
    attr_accessor :child_lifetime

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ike_cipher_algo'] = 'ikeCipherAlgo'
      @_hash['ike_auth_algo'] = 'ikeAuthAlgo'
      @_hash['ike_diffie_hellman_group'] = 'ikeDiffieHellmanGroup'
      @_hash['ike_lifetime'] = 'ikeLifetime'
      @_hash['child_cipher_algo'] = 'childCipherAlgo'
      @_hash['child_auth_algo'] = 'childAuthAlgo'
      @_hash['child_pfs_group'] = 'childPfsGroup'
      @_hash['child_lifetime'] = 'childLifetime'
      @_hash
    end

    def initialize(ike_cipher_algo = nil,
                   ike_auth_algo = nil,
                   ike_diffie_hellman_group = nil,
                   ike_lifetime = nil,
                   child_cipher_algo = nil,
                   child_auth_algo = nil,
                   child_pfs_group = nil,
                   child_lifetime = nil)
      @ike_cipher_algo = ike_cipher_algo
      @ike_auth_algo = ike_auth_algo
      @ike_diffie_hellman_group = ike_diffie_hellman_group
      @ike_lifetime = ike_lifetime
      @child_cipher_algo = child_cipher_algo
      @child_auth_algo = child_auth_algo
      @child_pfs_group = child_pfs_group
      @child_lifetime = child_lifetime
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ike_cipher_algo = hash['ikeCipherAlgo']
      ike_auth_algo = hash['ikeAuthAlgo']
      ike_diffie_hellman_group = hash['ikeDiffieHellmanGroup']
      ike_lifetime = hash['ikeLifetime']
      child_cipher_algo = hash['childCipherAlgo']
      child_auth_algo = hash['childAuthAlgo']
      child_pfs_group = hash['childPfsGroup']
      child_lifetime = hash['childLifetime']

      # Create object from extracted values.
      IpsecPoliciesModel.new(ike_cipher_algo,
                             ike_auth_algo,
                             ike_diffie_hellman_group,
                             ike_lifetime,
                             child_cipher_algo,
                             child_auth_algo,
                             child_pfs_group,
                             child_lifetime)
    end
  end
end
