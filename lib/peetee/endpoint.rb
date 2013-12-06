module Peetee

  class Endpoint < Weary::Client

    def self.domain
      "https://www.pivotaltracker.com/services/v5"
    end

    def initialize(token)
      headers.merge!(
        "Content-Type"   => "application/json",
        "X-TrackerToken" => token)
      use Peetee::Middleware
    end

  end

end