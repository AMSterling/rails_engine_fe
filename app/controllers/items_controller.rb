class ItemsController < ApplicationController
  def index
    @items = ItemFacade.items
  end

  def show
    @item = ItemFacade.item(params[:id])
    @merchant = MerchantFacade.item_merchant(params[:id])
  end
end
