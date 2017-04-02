class Content < ApplicationRecord
  validates :about, :contact, presence: true
end
