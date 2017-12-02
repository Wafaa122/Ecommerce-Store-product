class SimplePagesController < ApplicationController
  def landing_page
    @products = Product.all
  end
end
