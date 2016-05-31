class RemoveUserIdFromTalks < ActiveRecord::Migration
  def change
    remove_reference :talks, :user, index: true, foreign_key: true
  end
end
