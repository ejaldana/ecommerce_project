class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :orrder

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :product_present
  validate :orrder_present

  before_save :finalize

#unit_price function will take the associated product's price if the order item is not currently persisted
#once the product is added to our cart, if the product changes price the user will still be able to buy the product at the previous price
  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def total_price
    unit_price * quantity
  end

private
  def product_present
    if product.nil?
      errors.add(:product, "is not valid or is not active.")
    end
  end

  def orrder_present
    if orrder.nil?
      errors.add(:orrder, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
