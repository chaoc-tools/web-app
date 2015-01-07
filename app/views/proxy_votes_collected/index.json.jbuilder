json.array!(@proxy_votes_collected) do |proxy_votes_collected|
  json.extract! proxy_votes_collected, :id, :annual_meeting_id, :building_id, :user_id, :votes_collected
  json.url proxy_votes_collected_url(proxy_votes_collected, format: :json)
end
