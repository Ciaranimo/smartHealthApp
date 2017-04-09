class AddCostToRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :cost, :decimal
  end
end
