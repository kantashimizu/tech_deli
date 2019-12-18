class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    @owner = User.find_by(name:"管理者")
    @time = Time.now 

  end

  

end
