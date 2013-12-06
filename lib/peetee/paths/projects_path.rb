module Peetee
  class ProjectsPath < Path

    def get
      resources = ProjectsEndpoint.new(token).get.perform.parse
      resources.map { |resource| ProjectResource.new(token, resource) }
    end

    def post(parameters)
      request = ProjectsEndpoint.new(token).post
      request.json(parameters)
      resource = request.perform.parse
      ProjectResource.new(token, resource)
    end

  end
end