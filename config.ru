require 'sinatra'

class App < Sinatra::Base

  get '/' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  

  end

end

run App
