require "sinatra"
require "json"

get '/' do
  'Hello world!'
end

get '/jsonp' do
  callback = params['callback']
  content = {"golem" => "borec"}
  content_type 'application/javascript'
  "#{callback}(#{content.to_json})"
end