module Peetee
  class ProjectsPath < Path

    def initialize(token)
      super token, "projects"
    end

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_get
    def get
      resources = super
      resources.map { |resource| ProjectResource.new(token, resource) }
    end

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_post
    def post(parameters)
      resource = super(parameters)
      ProjectResource.new(token, resource)
    end

  end
end