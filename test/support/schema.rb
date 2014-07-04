require 'active_record'


ActiveRecord::Schema.define do
  self.verbose = false

  create_table :people, :force => true do |t|
    t.string :name
    t.string :surname
    t.integer :age
    t.boolean :pensioner
    t.integer :status


    t.timestamps
  end
end