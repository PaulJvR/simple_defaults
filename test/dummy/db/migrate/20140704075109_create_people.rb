class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.boolean :pensioner

      t.timestamps
    end
  end
end
