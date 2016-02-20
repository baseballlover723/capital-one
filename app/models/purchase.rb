class Purchase < ActiveRecord::Base
  belongs_to :merchant
  belongs_to :account
end
