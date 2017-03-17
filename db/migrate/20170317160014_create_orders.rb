class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :pst_rate
      t.decimal :gst_rate
      t.datetime :created_at
      t.datetime :updated_at
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
