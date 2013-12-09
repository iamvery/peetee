module Peetee
  class ProjectEpicsPath < Path

    attr_reader :project_id

    def initialize(token, project_id)
      super token, "projects/#{project_id}/epics"
      @project_id = project_id
    end

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_epics_get
    def get
      resources = super
      resources.map { |resource| EpicResource.new(token, resource) }
    end

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_epics_post
    def post(parameters)
      resource = super(parameters)
      EpicResource.new(token, resource)
    end

  end
end