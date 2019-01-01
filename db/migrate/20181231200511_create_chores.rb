class CreateChores < ActiveRecord::Migration[5.2]
  def change
    create_table :chores, id: :uuid do |t|
      t.string :name
      t.boolean :completed
      t.string :comments
      t.string :category
      t.integer :user_id
      t.integer :home_id
      t.timestamps
    end
  end
end
