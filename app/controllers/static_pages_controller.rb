class StaticPagesController < ApplicationController
  def index
  	redirect_to "/static_pages/landing_page"
  end

  def landing_page
  	@products = Product.limit(3)
  end
end