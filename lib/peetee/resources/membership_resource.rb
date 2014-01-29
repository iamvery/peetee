module Peetee
  class MembershipResource
    include Resource

    attribute :id, Integer
    attribute :person, PersonResource
  end
end
