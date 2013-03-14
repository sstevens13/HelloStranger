class RemovePresentFromCheckIn < ActiveRecord::Migration
  def up
    remove_column :check_ins, :present
  end

  def down
    add_column :check_ins, :present, :boolean
  end
end
