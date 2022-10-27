class MerchantsController < ApplicationController
  def index
    # if params[:name]
    #   @searched_merchants = MerchantFacade.merchants_by_name(params[:name])
    # else
      @merchants = MerchantFacade.merchants
    # end
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
    @items = ItemFacade.merchant_items(params[:id])
  end
end
