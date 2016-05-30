class AddUserToTalk < ActiveRecord::Migration
  def change
    add_reference :users, :talk, index: true
  end
end
