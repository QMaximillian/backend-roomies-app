class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :house_number
      t.string :house_address
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
