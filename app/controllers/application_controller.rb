require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :new
  end

  post '/teams' do
    # binding.pry
    @params = params
    @heroes = params[:team][:heroes]
    erb :team
  end


end
