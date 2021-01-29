class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :cart
  protect_from_forgery with: :exception
 def cart 
  session[:cart] ||= []
 end 

 def add_to_cart
  # Get the item from the path
  @item = Item.find(params[:id])

  # Load the cart from the session, or create a new empty cart.
  cart << @item.id
end 
end
