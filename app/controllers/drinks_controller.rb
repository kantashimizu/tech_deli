class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    @time = Time.now 
  end

  

end
