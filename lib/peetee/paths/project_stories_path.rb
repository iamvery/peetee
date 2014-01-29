module Peetee
  class ProjectStoriesPath < Path

    attr_reader :project_id

    def initialize(token, project_id)
      super token, "projects/#{project_id}/stories"
      @project_id = project_id
    end

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_stories_post
    def post(parameters)
      resource = super(parameters)
      StoryResource.new(token, resource)
    end

  end
end
