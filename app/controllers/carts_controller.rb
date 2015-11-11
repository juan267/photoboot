class CartsController < ApplicationController
  def show
    carts_ids = REDIS.smembers current_user_cart
  end
end
