module Peetee
  class ProjectMembershipPath < Path
    attr_reader :project_id

    def initialize(token, project_id)
      super token, "projects/#{project_id}/memberships"
      @project_id = project_id
    end

    # https://www.pivotaltracker.com/help/api/rest/v5#projects_project_id_memberships_get
    def get
      resources = super
      resources.map{ |resource| MembershipResource.new(token, resource) }
    end
  end
end
