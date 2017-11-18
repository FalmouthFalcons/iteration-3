class OrdersController < ApplicationController
    
    def new
        @order = Order.new
    end
    

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
            redirect_to @order[0]
        else
            # identifies an existing order - push a new product to an old order 
           new_order = Order.new
           new_order.customer_id = @user.id
           new_order.save
           new_order_product = OrderProduct.new
           new_order_product.product_id = product_params[:id]
           new_order_product.order_id = new_order.id
           new_order_product.save
           redirect_to 'new'
        end
  
        # takes user to the view of Shopping Cart
    end

    def show

        @user = User.find(session[:user_id]) 
        puts @user
        #added order of shopping cart so that last item added is at top
        @order_product = OrderProduct.where(order_id: params[:id]).order('id DESC')
        
        @final = []

        @order_product.each do |op|
            puts Product.find(op.product_id)
        
   

        @product = Product.find(op.product_id)
          
        @final.push(@product)

        end

    end


    
    private
    def product_params
        params.require(:product).permit(:id, :title, :category, :type, :price, :delivery, :city, :description)
    end

end
