require 'sinatra'
require 'csv'

players = []
CSV.foreach('public/lackp_starting_rosters.csv', headers: true) do |row|

   player = {
    first_name: row["first_name"],
    last_name: row["last_name"],
    position: row["position"],
    team: row["team"]
  }

  players << player
end


get '/' do
  @players = players
  erb :index
end

get '/teams/:team' do
  @players = players
  @team = params[:team]
  erb :team
end

get '/positions/:position' do
  @players = players
  @position = params[:position]
  erb :positions
end

