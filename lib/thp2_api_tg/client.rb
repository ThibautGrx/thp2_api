module Thp2ApiTg
  class Client
    def initialize(username:, password:, url: "https://tg-thp2-staging.herokuapp.com/")
      @connection = Faraday.new(url: url) do |faraday|
        faraday.use(Thp2ApiTg::Auth, username: username, password: password, url: url)
        faraday.adapter Faraday.default_adapter
      end
    end

    def lessons
      Thp2ApiTg::Lessons.new(@connection)
    end
  end
end
