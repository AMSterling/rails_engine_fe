class ItemsController < ApplicationController
  def show
    @item = ItemFacade.item(params[:id])
  end
end
