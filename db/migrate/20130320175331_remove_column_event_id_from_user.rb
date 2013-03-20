class RemoveColumnEventIdFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :event_id
  end

  def down
    add_column :users, :event_id, :integer
  end
end
