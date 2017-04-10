class AddCostToPatient < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :cost, :decimal
  end
end
