module Thp2ApiTg
  class Lessons
    def initialize(connection)
      @connection = connection
    end

    def all
      response = @connection.get('/lessons')
      result = (JSON.parse(response.body) if response.success?)
      Response.new(result, response)
    end
  end
end
