class ClothesController < ApplicationController

    def index 
        if session[:user_id]
        @clothes = Clothe.all 
        else 
            redirect_to login_path
        end
    end

    def show
        if session[:user_id]
        @clothe = Clothe.find(params[:id])
        else 
        redirect_to login_path
        end
    end
end


