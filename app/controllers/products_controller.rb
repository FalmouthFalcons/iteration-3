class ProductsController < ApplicationController

    # Method to create a new product to sell
    def new
        @product = Product.new
    end
end
