json.extract! profile, :id, :firstname, :lastname, :hospital, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
