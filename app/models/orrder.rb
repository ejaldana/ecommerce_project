class Orrder < ApplicationRecord
  belongs_to :order_status
  has_many :order_items
  #gets fired when order is created
  before_validation :set_order_status
  before_save :update_subtotal

#called by calling orrder.subtotal
  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
#set order status to in progress
  def set_order_status
    self.order_status_id = 1
  end

#called during save and sums up order item's total cost
#and stores it in the subtotal field
  def update_subtotal
    self[:subtotal] = subtotal
  end
end
