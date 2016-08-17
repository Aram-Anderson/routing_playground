class PlaygroundApp < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/css/rewrite.css' do
    "body { background-color: blue }"
  end

  get '/nested/index.html' do
    erb :nested
  end
end
