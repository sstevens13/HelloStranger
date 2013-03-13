class AddCheckInIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :check_in_id, :integer
  end
end
