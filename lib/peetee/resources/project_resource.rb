module Peetee
  class ProjectResource
    include Resource

    attribute :id, Integer
    attribute :name, String

    def epics
      ProjectEpicsPath.new(token, id)
    end

    def stories
      ProjectStoriesPath.new(token, id)
    end

  end
end
