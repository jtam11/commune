class RemoveTalkIdFromUser < ActiveRecord::Migration
  def change
    remove_reference :users, :talk, index: true
  end
end
