class Patient < ApplicationRecord
  # one to many relationship
  has_many :requests
end
