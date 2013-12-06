module Peetee

  class ProjectEndpoint < Endpoint

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_get
    get :get, "/projects/{project_id}" do |resource|
      resource.required :project_id
    end

  end

end