class CreateUserHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_homes, id: :uuid do |t|
      t.uuid :home_id
      t.uuid :user_id
      t.references :home, type: :uuid
      t.references :user, type: :uuid
      t.timestamps
    end
  end
end
