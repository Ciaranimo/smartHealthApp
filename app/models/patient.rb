class Patient < ApplicationRecord
  # one to many relationship
  has_many :requests

  # search functionality
  def self.search(search_for)
    Patient.where("last_name = ?", search_for)
  end

  HOSPITAL_LIST = ["Beaumont", "St. Vincents", "St. James", "Galway University", "Sligo", "Cork", "Mater", "Rotunda"]

end
