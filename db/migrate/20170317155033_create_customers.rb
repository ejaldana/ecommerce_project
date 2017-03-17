class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.references :province, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
