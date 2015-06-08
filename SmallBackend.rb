require "sinatra"
require "json"


content = [{author: "Pete Hunt", text: "Wowza"}, {author: "Jordan Walke", text: "This is *another* comment"}]

get '/' do
  'Hello world!'
end

get '/jsonp' do
  callback = params['callback']
  
  "#{callback}(#{content.to_json})"
end

before do
    content_type 'application/javascript'
end


