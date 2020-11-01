require 'sinatra'
require 'json'

get '/' do
  content_type :json
  data = { foo: 'bar' }
  data.to_json
end