class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_bid
    Bid.find(session[:bid_id])
    rescue ActiveRecord::RecordNotFound
    bid = Bid.create
    session[:bid_id] = bid.id
    bid
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  private
  def current_category
  category.find(session[:category_id])
  rescue ActiveRecord::RecordNotFound
  category = Category.create
  session[:category_id] = category.id
  category
 end

end
