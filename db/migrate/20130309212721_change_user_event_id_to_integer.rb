class ChangeUserEventIdToInteger < ActiveRecord::Migration
  def up
    change_column :users, :event_id, :integer
  end

  def down
    change_column :users, :event_id, :string
  end
end
