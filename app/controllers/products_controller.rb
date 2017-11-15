class ProductsController < ApplicationController

  def index
    @products = products.all
  end

  def

  end

  def

  end

  def alert
    @products = Products.find(params[:id])
    @articles.alert
    redirect_to products_path
  end
end



# Given a user is authenticated
# And performs a gesture on the Sell a product hyperlink
# When the product form is rendered
# Then there should be a dropdown that displays all product categories

# Given a user has filled out the product form, but not chosen a category
# When the user clicks on the Sell button
# Then the user should be alerted to select a product category
