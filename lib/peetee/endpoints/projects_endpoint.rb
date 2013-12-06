module Peetee

  class ProjectsEndpoint < Endpoint

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_get
    get :index, "/projects"

    def self.index(token)
      projects_attributes = new(token).index.perform.parse
      projects_attributes.map { |project_attributes| Project.new(token, project_attributes) }
    end

  end

end