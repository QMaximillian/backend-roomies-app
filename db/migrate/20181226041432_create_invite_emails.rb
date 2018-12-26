class CreateInviteEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :invite_emails do |t|
      t.string :home_code
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :sender_id

      t.timestamps
    end
    end
  end
