class StoreController < ApplicationController
  def index
    # SELECT "products".* FROM "products" ORDER BY title
    # order = Instance Method of ActiveRecord::QueryMethods
    @products = Product.order(:title)
  end
end
