class Province < ApplicationRecord
  has_many :customers

  validates :name, uniqueness: true
  #columns must be filled out before it can be saved to the db
  validates :name, :pst, :gst, :hst, presence: true
end
