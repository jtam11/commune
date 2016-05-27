class AddDescriptionToTalk < ActiveRecord::Migration
  def change
    add_column :talks, :description, :string
  end
end
