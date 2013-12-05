module Peetee

  class Tracker

    def initialize(token)
      @client = Peetee::Client.new(token)
    end

    def project(project_id)
      response = @client.project(project_id: project_id).perform
      project = response.parse
      Project.new(project)
    end

    def projects
      response = @client.projects.perform
      projects = response.parse
      projects.map { |project| Project.new(project) }
    end

  end

end