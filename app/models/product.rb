class Product < ApplicationRecord
  belongs_to :category

  #product names must be unique and longer than 3 characters
  validates :name, uniqueness: true
  #columns must be filled out before it can be saved to the db
  validates :name, :description, :price, :stock_quantity, presence: true
end
