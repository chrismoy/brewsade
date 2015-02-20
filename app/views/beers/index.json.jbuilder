json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :label_url, :description, :beer_type, :brewery
  json.url beer_url(beer, format: :json)
end
