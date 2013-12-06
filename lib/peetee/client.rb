module Peetee

  class Client < Weary::Client

    domain "https://www.pivotaltracker.com/services/v5"

    get :projects, "/projects"

    get :project, "/projects/{project_id}" do |resource|
      resource.required :project_id
    end

    get :project_epics, "/projects/{project_id}/epics" do |resource|
      resource.required :project_id
    end

    use Peetee::Middleware

    def initialize(token)
      headers.merge!("X-TrackerToken" => token)
    end

  end

end