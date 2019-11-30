class OrdersController < ApplicationController
  def new
    @drink = Drink.find(params[:id])
    @price = @drink.price * 1.1
  end

  def show
    @orders = Order.all.order("id DESC")
  end

  def create
    @drink = Drink.find(params[:id])
    @order = Order.new(order_params)
    @price = @drink.price * 1.1
    @order.save
  end


  private

  def order_params
    params.permit(:seat,:user_id,:drink_id)
  end

end
