class Cart < ActiveRecord::Base
  # If we destroy a cart, deleting it from the database, we’ll want Rails also to destroy any line items that are associated with that cart.
  has_many :line_items, dependent: :destroy
end
