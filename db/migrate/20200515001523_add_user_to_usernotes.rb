class AddUserToUsernotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :usernotes, :user, foreign_key: true
  end
end
