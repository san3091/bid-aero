class Company < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
  has_many :auctions
  has_many :bids
  has_many :inventory_parts
end
