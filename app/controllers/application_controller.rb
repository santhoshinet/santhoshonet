class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def aim
    @aim = Aim.first(:order => "RANDOM()").title
  end
  def load_categories
    @categories = Category.all
  end
end
