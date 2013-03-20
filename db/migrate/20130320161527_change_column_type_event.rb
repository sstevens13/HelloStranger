class ChangeColumnTypeEvent < ActiveRecord::Migration
  def up
    change_column :events, :event_date, :string
  end

  def down
    change_column :events, :event_date, :date
  end
end
