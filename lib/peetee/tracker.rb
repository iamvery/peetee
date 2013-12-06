module Peetee

  class Tracker

    def initialize(token)
      @client = Peetee::Client.new(token)
    end

    def project(project_id)
      project_attributes = @client.project(project_id: project_id).perform.parse
      Project.new(@client, project_attributes)
    end

    def projects
      projects_attributes = @client.projects.perform.parse
      projects_attributes.map { |project_attributes| Project.new(@client, project_attributes) }
    end

  end

end