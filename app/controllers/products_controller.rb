class ProductsController < ApplicationController

    def index
         # search feature for products
        if params[:search]
        @product = Product.search(params[:search])
        else 
        # gets last submission at top
        @product = Product.all.order("created_at DESC" )
        end 
        ####### use ActiveRecord decending order method instead of sql.  
        # ###### re-factor this code and that in the product.rb
    end


    def show
          @product = Product.find(params[:id])
          @products = Product.all
          # gets number of items in each category for show page
          @products_count = Product.group(:product_type_id).count(:product_type_id)
    end 
    
    def my_products
        # @user = User.find(params[:id])
        # @my_products = Product.where(:user_id => @user_id)
        @user = User.find(session[:user_id])
        @my_products = @user.products
    end

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

    def update
    end

    def destroy
        @product = Product.find(params[:id])
        # when user deletes, make sure they are the one that created product
        @user = User.find(session[:user_id])
            if @user.id == @product.user_id
                @product.active = false
                @product.save
            end
        redirect_to products_path
    end

    # makes sure the product_params are not accesable to user.
    private
    def product_params
        params.require(:product).permit(:title, :product_type_id, :type, :price, :delivery, :city, :description, :product_image)
    end
end
