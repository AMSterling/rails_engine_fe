class WelcomeController < ApplicationController
  def index
    @searched_merchants = MerchantFacade.merchants_by_name(params[:name])
  end
end
