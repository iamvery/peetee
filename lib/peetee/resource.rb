module Peetee
  module Resource
    include Virtus.module(constructor: false)

    attr_reader :token

    def initialize(token, attributes)
      @token = token
      self.attributes = attributes
    end

    attribute :code, String
    attribute :error, String
    attribute :general_problem, String
    attribute :kind, String
    attribute :validation_errors, Array
  end
end