class Account < ActiveRecord::Base
    has_many :payment_profiles
    validates :email, presence: true, length: { minimum: 5 }
end
