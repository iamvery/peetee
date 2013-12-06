module Peetee
  class Project
    include Resource

    attribute :id, Integer

    def epics
      epics_attributes = client.project_epics(project_id: id).perform.parse
      epics_attributes.map { |epic_attributes| Epic.new(client, epic_attributes) }
    end

  end
end
