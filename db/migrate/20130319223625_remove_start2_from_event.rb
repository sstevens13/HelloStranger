class RemoveStart2FromEvent < ActiveRecord::Migration
  def up
    remove_column :events, :start
  end

  def down
    add_column :events, :start, :date
  end
end
