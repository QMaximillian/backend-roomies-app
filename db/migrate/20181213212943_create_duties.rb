class CreateDuties < ActiveRecord::Migration[5.2]
  def change
    create_table :duties do |t|
      t.integer :user_id
      t.integer :home_id
      t.string :category
      t.string :description
      t.boolean :done
      t.timestamps
    end
  end
end
