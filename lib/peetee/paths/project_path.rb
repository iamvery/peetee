module Peetee
  class ProjectPath < Path

    attr_reader :project_id

    def initialize(token, project_id)
      super token, "projects/#{project_id}"
      @project_id = project_id
    end

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_get
    def get
      resource = super
      ProjectResource.new(token, resource)
    end

    def epics
      ProjectEpicsPath.new(token, project_id)
    end

  end
end