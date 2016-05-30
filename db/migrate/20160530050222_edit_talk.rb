class EditTalk < ActiveRecord::Migration
  def change
    rename_column :talks, :time, :start_time
    add_column :talks, :end_time, :time
  end
end
