json.array!(@game_infos) do |game_info|
  json.extract! game_info, :id, :info, :name1, :name2, :name3, :name4
  json.url game_info_url(game_info, format: :json)
end
