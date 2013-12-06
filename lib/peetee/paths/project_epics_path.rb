module Peetee
  class ProjectEpicsPath < Path

    attr_reader :project_id

    def initialize(token, project_id)
      super token
      @project_id = project_id
    end

    def get
      resources = EpicsEndpoint.new(token).get(project_id: project_id).perform.parse
      resources.map { |resource| EpicResource.new(token, resource) }
    end

  end
end