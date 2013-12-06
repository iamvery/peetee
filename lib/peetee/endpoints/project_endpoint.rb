module Peetee

  class ProjectEndpoint < Endpoint

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_get
    get :show, "/projects/{project_id}" do |resource|
      resource.required :project_id
    end

    def self.show(token, project_id)
      project_attributes = new(token).show(project_id: project_id).perform.parse
      Project.new(token, project_attributes)
    end

  end

end