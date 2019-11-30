class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    @users = User.all
    @owner = @users[0]
    @time = Time.now 

  end

  

end
