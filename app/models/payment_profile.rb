class PaymentProfile < ActiveRecord::Base
  belongs_to :account
  has_many :charges
end
