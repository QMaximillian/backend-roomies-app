class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :name
      t.string :category
      t.string :instructions
      t.integer :home_id
      t.timestamps
    end
  end
end
