class User < ApplicationRecord

  validates :username, uniqueness: true, :length => { :in => 3..20 }
  #columns must be filled out before it can be saved to the db
  validates :username, :password, presence: true
end
