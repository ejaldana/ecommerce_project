class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items
  has_many :line_items
  has_many :orders, :through => :line_items

  mount_uploader :image, ImageUploader
  #product names must be unique and longer than 3 characters
  validates :name, uniqueness: true
  #columns must be filled out before it can be saved to the db
  validates :name, :description, :price, :stock_quantity, presence: true

  #used to search for a specific product name
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
