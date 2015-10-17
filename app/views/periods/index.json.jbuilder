json.array!(@periods) do |period|
  json.extract! period, :id, :schedule, :band, :special
  json.url period_url(period, format: :json)
end
