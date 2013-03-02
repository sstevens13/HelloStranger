class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :age
      t.string :orientation
      t.string :religion
      t.string :gender
      t.string :event_id

      t.timestamps
    end
  end
end
