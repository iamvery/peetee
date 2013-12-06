module Peetee

  class EpicsEndpoint < Endpoint

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_epics_get
    get :get, "/projects/{project_id}/epics" do |resource|
      resource.required :project_id
    end

  end

end