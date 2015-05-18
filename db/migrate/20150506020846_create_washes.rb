class CreateWashes < ActiveRecord::Migration
  def change
    create_table :washes do |t|
      t.decimal :amount
      t.date :date
      t.references :vehicle, index: true
      t.references :employee, index: true
      t.references :customer, index: true

      t.timestamps null: false
    end
    add_foreign_key :washes, :vehicles
    add_foreign_key :washes, :employees
    add_foreign_key :washes, :customers
  end
end
