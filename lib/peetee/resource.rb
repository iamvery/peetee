module Peetee
  module Resource
    include Virtus.module(constructor: false)

    attr_reader :client

    def initialize(client, attributes)
      raise ArgumentError, "Expected argument to be a Peetee::Client" unless client.is_a?(Peetee::Client)
      @client = client

      raise ArgumentError, "Expected argument to be a Hash" unless attributes.is_a?(Hash)
      self.attributes = attributes
    end
  end
end
