class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  #columns must be filled out before it can be saved to the db
  validates :quantity :price, presence: true
end
