class LoginController < ApplicationController


#similar to our create (takes data from login page and verifies data)
    def verify
        @user = User.find_by(username: params[:login][:username])
        @user = @user.try(:authenticate, params[:login][:password])


        if @user 
            session[:user_id] = @user.id
            redirect_to clothes_path
        else
            flash[:message] = "Incorrect Details!"
            render :new
        end
    end

    def destroy
        # User.find(session[:user_id]).destroy      
        session[:user_id] = nil         
        redirect_to '/login' 
    end 
    
end