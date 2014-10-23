class PaymentProfile < ActiveRecord::Base
  belongs_to :account
  has_many :charges

  # default = PaymentProfile.where(account_id: params[:id]).update_all(is_default: false)

  def set_default_card?

  end

end
