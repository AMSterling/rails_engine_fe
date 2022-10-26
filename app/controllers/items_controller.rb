class ItemsController < ApplicationController
  def show
    @item = ItemFacade.item(params[:id])
    @merchant = MerchantFacade.item_merchant(params[:id])
  end
end
