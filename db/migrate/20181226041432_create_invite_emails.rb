class CreateInviteEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :invite_emails do |t|

      t.timestamps
    end
  end
end
