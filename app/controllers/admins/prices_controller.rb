class Admins::PricesController < ApplicationController
	layout 'admins'
	before_action :authenticate_admin!

	def index
		@price = Price.find(1)
	end

	def update
		@price = Price.find(1)
    	if @price.update(price_params)
    		flash[:notice] = "更新完了"
    		redirect_to admins_prices_path
     	else
        	render :index
      end
	end


  private
  def price_params
    params.require(:price).permit(
      :basic_price,
      :night_price
      )
  end
end
