class ProductTypesController < ApplicationController

    def index
        # gets number of items in each category for show page
        # @products_count = Product.group(:category).count(:category)
        # This might work
        @products_count = ProductType.all
        @product_number = ProductType.count(:category)
        # Model.distinct.pluck(:rating)
        
    end

end
