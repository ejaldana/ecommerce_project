class Order < ApplicationRecord
  belongs_to :customer

  #columns must be filled out before it can be saved to the db
  validates :status, :pst_rate, :gst_rate, presence: true
end
