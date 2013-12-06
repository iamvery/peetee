module Peetee

  class Endpoint < Weary::Client

    use Peetee::Middleware

    def self.domain
      "https://www.pivotaltracker.com/services/v5"
    end

    def initialize(token)
      headers.merge!("X-TrackerToken" => token)
    end

  end

end