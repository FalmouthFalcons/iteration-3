class PaymentTypesController < ApplicationController
    def new
        @payment_type = PaymentType.new
    end
    def create
        @user = User.find(session[:user_id])
        @payment = PaymentType.create(payment_type_params)
        @payment.customer_id = @user.id
        if @payment.save
        redirect_to @payment
        else 
            render :new
        end
    end
    def index
        @get_all = PaymentType.where(customer_id: session[:user_id] )
    end
# name the @get_all variable more specifically, like @get_all_payment
    def show
        @payment_type =PaymentType.find(params[:id])
    end

    def destroy
        @payment_type = PaymentType.find(params[:id])
        if @payment_type.destroy
            redirect_to payment_types_path
        end
    end
    private
    def payment_type_params
      params.require(:payment_type).permit(:payment, :account_number, :user_id)
    end
end
