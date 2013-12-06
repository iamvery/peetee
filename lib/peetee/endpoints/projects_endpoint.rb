module Peetee

  class ProjectsEndpoint < Endpoint

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_get
    get :get, "/projects"

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_post
    post :post, "/projects"

  end

end