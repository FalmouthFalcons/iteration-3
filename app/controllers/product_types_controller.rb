class ProductTypesController < ApplicationController

    def index
        # gets number of items in each category for show page
        @products_count = Product.group(:category).count(:category)
        
    end

end
