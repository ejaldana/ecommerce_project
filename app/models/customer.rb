class Customer < ApplicationRecord
  belongs_to :province
  belongs_to :user

  #columns must be filled out before it can be saved to the db
  validates :name, :address, presence: true
end
