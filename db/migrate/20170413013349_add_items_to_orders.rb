class AddItemsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_items, :orrder, foreign_key: true
  end
end
