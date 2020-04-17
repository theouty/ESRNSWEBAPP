class UsersController < ApplicationController

    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to login_path
        else
            render :new
        end
    end
    
    def show
        if session[:user_id]
            @user = User.find(current_user.id)
        else
            redirect_to to login_path
        end
    end

    def edit
        @user = User.find(current_user.id)
    end

    def update
        @user = User.find(current_user.id)
        @user.update(user_params)
        redirect_to user_path(current_user.id)
    end
    
    private
    def user_params
        params.require(:user).permit(:username, :email, :password, :favorite_style)
    end
end
