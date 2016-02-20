class Account < ActiveRecord::Base
  belongs_to :customer
  has_many :bills
  has_many :deposits
  has_many :purchases
  has_many :transfers
  has_many :withdraws
end
