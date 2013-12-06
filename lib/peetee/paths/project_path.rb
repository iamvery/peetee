module Peetee
  class ProjectPath < Path

    attr_reader :project_id

    def initialize(token, project_id)
      super token
      @project_id = project_id
    end

    def epics
      ProjectEpicsPath.new(token, project_id)
    end

    def get
      resource = ProjectEndpoint.new(token).get(project_id: project_id).perform.parse
      ProjectResource.new(token, resource)
    end

  end
end