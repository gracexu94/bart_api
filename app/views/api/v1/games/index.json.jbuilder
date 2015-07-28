json.all_games_data @games
json.total_count @games.respond_to?(:total_entries) ? 
@games.total_entries : @games.to_a.count