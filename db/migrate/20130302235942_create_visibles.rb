class CreateVisibles < ActiveRecord::Migration
  def change
    create_table :visibles do |t|
      t.integer :hidden_user
      t.integer :user_of_interest

      t.timestamps
    end
  end
end
