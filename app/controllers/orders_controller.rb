class OrdersController < ApplicationController
  def new
    @drink = Drink.find(params[:id])
    @price = @drink.price * 1.1
    @time = Time.now
  end

  def show
    @orders = Order.all.order(id: "DESC")
  end

  def create
    @drink = Drink.find(params[:id])
    @order = Order.new(order_params)
    @price = @drink.price * 1.1

    @order.save
    unless @order.save
      redirect_to "/orders/new/#{@drink.id}"
    end
  end

  def finish
    @order = Order.find(params[:id])
    @order.update(finish: "1")
    redirect_to orders_show_path
  end


  private

  def order_params
    params.permit(:seat,:user_id,:drink_id,:finish)
  end

end
