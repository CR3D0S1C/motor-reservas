json.extract! hotel, :id, :name, :adress, :num_room, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
