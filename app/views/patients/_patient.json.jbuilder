json.extract! patient, :id, :first_name, :last_name, :dob, :admitted, :discharged, :hospital, :address, :phone, :injury, :infection, :observation, :created_at, :updated_at
json.url patient_url(patient, format: :json)
