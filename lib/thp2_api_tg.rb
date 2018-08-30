require 'faraday'
require 'json'

require 'thp2_api_tg/version'
require "thp2_api_tg/auth"
require "thp2_api_tg/lessons"
require "thp2_api_tg/client"

module Thp2ApiTg
  Response = Struct.new(:data, :response)
end
