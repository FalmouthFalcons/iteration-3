class ProductsController < ApplicationController

    # makes new instance for new products that is referd to in the view.
    def new
        @product = Product.new
        @products = Product.all
    end

    # "create" lets you take in new params and save them to database.
    def create
        @user = User.find(session[:user_id])
        @product = Product.create(product_params)
        @product.user_id = @user.id
        if @product.save
            redirect_to @product
        # "else" makes sure product params are satisfied, will not let you save invalid data to database.

        else
            flash[:error] = "Please select a category in order to submit."
            render :new

        end
    end

    def index
        @product = Product.all
    end

    def show
        @product = Product.find(params[:id])
        @products = Product.all
    end

    # method for category listings
    def categoryshow

    end

    # makes sure the product_params are not accesable to user.
    private
    def product_params
        params.require(:product).permit(:title, :category, :type, :price, :delivery, :city, :description, :product_image)
    end

end
