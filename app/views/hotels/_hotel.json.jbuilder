json.extract! hotel, :id, :city, :name, :address, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
