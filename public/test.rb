require 'csv'

@players = []

CSV.foreach('lackp_starting_rosters.csv', headers: true) do |row|

   player = {
    first_name: row["first_name"],
    last_name: row["last_name"],
    position: row["position"],
    team: row["team"]
  }

  @players << player
end


puts @players.inspect
