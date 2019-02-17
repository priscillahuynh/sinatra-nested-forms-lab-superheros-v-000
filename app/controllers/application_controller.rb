require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do 
    erb :super_hero  
  end
  
  post '/teams' do 
    @team = Team.new(params[:team])
    
    params[:team][:hero]. each do |hero|
      @hero = Hero.new(params[:hero])
  end
  
  get '/teams' do 
    erb :team
  end 
end
