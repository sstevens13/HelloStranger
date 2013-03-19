class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :liking_user
      t.integer :liked_user

      t.timestamps
    end
  end
end
