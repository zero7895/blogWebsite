json.array!(@game_data) do |game_datum|
  json.extract! game_datum, :id, :money1, :money2, :money3, :money4
  json.url game_datum_url(game_datum, format: :json)
end
