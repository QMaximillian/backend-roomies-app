class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :home_number
      t.string :home_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :home_code

      t.timestamps
    end
  end
end
