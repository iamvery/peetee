module Peetee
  class PersonResource
    include Virtus.value_object

    attribute :id, Integer
    attribute :name, String
  end
end
