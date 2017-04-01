class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name_person_one
      t.string :name_person_two
      t.integer :kids
      t.boolean :attends

      t.timestamps null: false
    end
  end
end
