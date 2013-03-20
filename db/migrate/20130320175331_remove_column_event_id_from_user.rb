class RemoveColumnEventIdFromUser < ActiveRecord::Migration
  def up
    remove_column :user, :event_id
  end

  def down
    add_column :user, :event_id, :integer
  end
end
