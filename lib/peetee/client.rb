module Peetee

  class Client < Weary::Client

    domain "https://www.pivotaltracker.com/services/v5"
    use Peetee::Middleware

    get :projects, "/projects"

    get :project, "/projects/{project_id}" do |resource|
      resource.required :project_id
    end

    def initialize(token)
      headers.merge!("X-TrackerToken" => token)
    end

  end

end