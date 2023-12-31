module CurrentCart

  private # private methods can't be used as actions on controllers

    def set_cart
      @cart = Cart.find session[:cart_id] # get cart id from session object
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id # if no cart id in session, create new cart and
      # store it in the session object with its id
    end
end
