class Profile < ApplicationRecord
  belongs_to :user

  HOSPITAL_LIST = ["Beaumont", "St. Vincents", "St. James", "Galway University", "Sligo", "Cork", "Mater", "Rotunda"]

end
