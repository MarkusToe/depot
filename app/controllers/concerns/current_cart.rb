module CurrentCart
  extend ActiveSupport::Concern

  # private prevents Rails from ever making set_cart available as an action on the controller
  private

    def set_cart
      #  session[] wird von Rails transparent als Hash angeboten.
      # Von Rails wird dabei automatisch für jeden neuen Besucher der Webseite eine neue Session angelegt.
      @cart = Cart.find(session[:cart_id])

    # ActiveRecord::RecordNotFound = rescue clause to tell Ruby the type of exception we want to handle
    # Raised when Active Record cannot find record by given id or set of ids.
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end