module Peetee

  class EpicsEndpoint < Endpoint

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_epics_get
    get :index, "/projects/{project_id}/epics" do |resource|
      resource.required :project_id
    end

    def self.index(token, project_id)
      epics_attributes = new(token).index(project_id: project_id).perform.parse
      epics_attributes.map { |epic_attributes| Epic.new(token, epic_attributes) }
    end

  end

end