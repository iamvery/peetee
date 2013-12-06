module Peetee

  class Tracker

    attr_reader :token

    def initialize(token)
      @token = token
    end

    def project(project_id)
      ProjectEndpoint.show(token, project_id)
    end

    def projects
      ProjectsEndpoint.index(token)
    end

  end

end