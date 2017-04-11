class Request < ApplicationRecord
  belongs_to :patient

  REQUEST_LIST = ["X-Ray", "CAT Scan", "Plaster", "MRI"]

end
