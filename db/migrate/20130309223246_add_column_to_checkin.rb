class AddColumnToCheckin < ActiveRecord::Migration
  def change
    add_column :check_ins, :present, :boolean
  end
end