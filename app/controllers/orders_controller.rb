class OrdersController < ApplicationController
  def new
    @drink = Drink.find(params[:id])
  end

  def create
    @drink = Drink.find(params[:id])
    @order = Ooder.new(order_params)
    @order.save
  end


  private

  def order_params
    params.require(:order).permit(:user_id,:drink_id)
  end

end
