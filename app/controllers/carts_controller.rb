class CartsController < ApplicationController

    def create
        @cart = Cart.new(strong_params)
        @cart.user_id = current_user.id
        @cart.save
        redirect_to clothes_path
    end

    # def show
    #     @cart = Cart.find(params[:id])
    # end
    
    def destroy 
       @cart = Cart.find(params[:clothe][:cart_id])
       @cart.destroy
       redirect_to user_path(params[:id])
    end

        
    private
    def strong_params
        params.require(:cart).permit(:clothe_id)
    end

end

