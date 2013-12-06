module Peetee
  class Project
    include Resource

    attribute :id, Integer

    def epics
      EpicsEndpoint.index(token, id)
    end

  end
end
