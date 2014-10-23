class Charge < ActiveRecord::Base
  belongs_to :payment_profile
  has_many :packages
end
