class AddHostIdToTalks < ActiveRecord::Migration
  def change
    add_reference :talks, :host, references: :users, index: true
    add_foreign_key :talks, :users, column: :host_id
  end
end
