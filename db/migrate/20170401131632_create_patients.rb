class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.string :admitted
      t.string :discharged
      t.string :hospital
      t.string :address
      t.string :phone
      t.string :injury
      t.string :infection
      t.text :observation

      t.timestamps
    end
  end
end
