class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes, id: :uuid, force: :cascade do |t|
      t.string :home_number
      t.string :home_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.datetime :begin_lease
      t.datetime :end_lease
      t.integer :roomates
      t.timestamps
    end
  end
end
