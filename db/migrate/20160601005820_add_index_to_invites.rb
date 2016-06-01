class AddIndexToInvites < ActiveRecord::Migration
  def change
    add_index :invites, :attendee_id
    add_index :invites, :attended_talk_id
    add_index :invites, [:attendee_id, :attended_talk_id], unique: true
  end
end
