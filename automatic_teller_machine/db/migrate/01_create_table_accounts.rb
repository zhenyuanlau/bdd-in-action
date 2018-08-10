ActiveRecord::Schema.define do
  create_table :accounts, force: true do |t|
    t.string :number
    t.integer :balance
  end
end
