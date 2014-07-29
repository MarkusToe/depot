class LineItem < ActiveRecord::Base
  # the two belongs_to() calls tell Rails that rows in the line_items table are children of rows in the carts and products tables
  # No line item can exist unless the corresponding cart and product rows exist.
  # if a table has foreign keys, the corresponding model should have a belongs_to for each.
  belongs_to :product
  belongs_to :cart
end
