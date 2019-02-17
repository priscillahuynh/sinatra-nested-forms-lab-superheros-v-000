require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do 
    erb :super_hero  
  end
  
  post '/teams' do 
    @hero = Hero.new[params]
    @team = Team.new[params]
  end
  
  get '/teams' do 
    erb :team
  end 
end
