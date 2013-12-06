module Peetee

  class Tracker

    attr_reader :token

    def initialize(token)
      @token = token
    end

    def project(project_id)
      ProjectPath.new(token, project_id)
    end

    def projects
      ProjectsPath.new(token)
    end

  end

end