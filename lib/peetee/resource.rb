module Peetee
  module Resource
    include Virtus.module(constructor: false)

    attr_reader :token

    def initialize(token, attributes)
      @token = token
      self.attributes = attributes
    end
  end
end
