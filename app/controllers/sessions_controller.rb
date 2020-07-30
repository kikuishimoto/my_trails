class SessionsController < ApplicationController
    def new 
    end 

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to trails_path
        else 
            flash[:alert] = "invalid username or password. please try again."
            redirect_to '/login'
        end 
    end 


    def destroy
        session.clear
        redirect_to root_path
    end
end 