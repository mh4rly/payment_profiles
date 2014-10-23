class PaymentProfilesController < ApplicationController
  def create
    @account = Account.find(params[:account_id])
    @payment_profile = @account.payment_profiles.create(payment_profile_params)
    redirect_to account_path(@account)
  end

   def destroy
    @account = Account.find(params[:account_id])
    @payment_profiles = @account.payment_profiles.find(params[:id])
    @payment_profiles.destroy
    redirect_to account_path(@account)
  end


  private
    def payment_profile_params
      params.require(:payment_profile).permit(:last_four, :card_type, :exp_month, :exp_year, :is_default)
    end

end
