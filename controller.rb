require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/rock_paper_scissors')
also_reload('models/*')

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @outcome = game.play()
  erb(:outcome)
end

get '/' do
  erb(:home)
end

get '/game_rules' do
  erb (:game_rules)
end

get '/outcome' do
  erb (:outcome)
end
