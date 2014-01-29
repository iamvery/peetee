module Peetee
  class Path < RestClient::Resource

    def initialize(token, path)
      super \
        "https://www.pivotaltracker.com/services/v5/#{path}",
        headers: {
          :accept          => :json,
          :content_type    => :json,
          "X-TrackerToken" => token }
      @token = token
    end

    private

    def get
      response_body = super
      JSON.parse(response_body)
    end

    def post(parameters)
      request_body = JSON.generate(parameters)

      begin
        response_body = super(request_body)
        JSON.parse(response_body)
      rescue RestClient::BadRequest => e
        puts e.inspect
        JSON.parse(e.http_body)
      end

    end

    def token
      @token
    end

  end
end
