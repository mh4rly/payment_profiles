class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def index
    @account = Account.all
    @charge  = Charge.all
  end

  def create
    @account = Account.new(account_params)

    if @account.save
        redirect_to @account
    else
      render 'new'
    end
  end

  def show
    @account  = Account.find(params[:id])
    @profiles = PaymentProfile.where account_id: params[:id]
    @charge   = Charge.where payment_profile_id: params[:id]
  end

  def edit
    @account = Account.find(params[:id])
  end

  def edit_card
    @charge = Charge.where payment_profile_id: params[:id]
  end

  def update
    @account = Account.find(params[:id])

  if @account.update(account_params)
    redirect_to @account
  else
    render 'edit'
  end
end

  private
    def account_params
      params.require(:account).permit(:email)
    end
end
