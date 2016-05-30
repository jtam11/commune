class AddUserIdToTalks < ActiveRecord::Migration
  def change
    add_reference :talks, :user, index: true, foreign_key: true
  end
end
