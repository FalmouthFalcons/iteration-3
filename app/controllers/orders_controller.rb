class OrdersController < ApplicationController
    
    def new
        @order = Order.new
    end
    
# "find_or_create_by" method could replace this:
    def add_to_cart
# if no pmt type entered, order is known as incomplete
        @user = User.find(session[:user_id])
        @order = Order.where(customer_id: @user.id, payment_type_id: nil)
        if @order.any? 
        # if no new order, create the order form with :id as the beginning of array
            new_order_product = OrderProduct.new
            # references the params below in private
            new_order_product.product_id = product_params[:id]
            new_order_product.order_id = @order[0].id
            new_order_product.save
            redirect_to action: "index"
        else
            # identifies an existing order - push a new product to an old order 
           new_order = Order.new
           new_order.customer_id = @user.id
           new_order.save
           new_order_product = OrderProduct.new
           new_order_product.product_id = product_params[:id]
           new_order_product.order_id = new_order.id
           new_order_product.save
           redirect_to action: "index"
        end

        # takes user to the view of Shopping Cart
    end

    def index 

        @user = User.find(session[:user_id]) 
        puts @user
        #added order of shopping cart so that last item added is at top
        @order = Order.find_by(:customer_id => @user.id, :payment_type_id => nil)

    end

    # pick payment type
    def place_order
        @payment_types = PaymentType.where(customer_id: session[:user_id] )
        
    end

    # order confirmation page with details
    def update
        @payment_types = PaymentType.find(params[:payment_type_id])
        @user = User.find(session[:user_id])
        @order = Order.find_by(customer_id: @user.id, payment_type_id: nil)        
        # setting pmt type id 
        @order.payment_type_id = @payment_types.id 
        @order.save
        redirect_to '/complete_order'
    end

    def complete_order
        @user = User.find(session[:user_id])
    end
    
    private
    def product_params
        params.require(:product).permit(:id, :title, :category, :type, :price, :delivery, :city, :description)
    end

end
