require 'sinatra'
require 'csv'





get '/' do
  @players = []

  CSV.foreach('public/lackp_starting_rosters.csv', headers: true) do |row|

     player = {
      first_name: row["first_name"],
      last_name: row["last_name"],
      position: row["position"],
      team: row["team"]
    }

    @players << player
  end
  erb :index
end

get '/teams/:team' do
   @players = []

  CSV.foreach('public/lackp_starting_rosters.csv', headers: true) do |row|

     player = {
      first_name: row["first_name"],
      last_name: row["last_name"],
      position: row["position"],
      team: row["team"]
    }

    @players << player
  end

  @team = params[:team]
  erb :team
end
