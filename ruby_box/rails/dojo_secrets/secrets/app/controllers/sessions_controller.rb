class SessionsController < ApplicationController

    skip_before_action :require_login
    
    def new #display the page for me to log in
        
    end

    def create # where im actually going to login... like pass all of my information
        @user = User.find_by(email: params['Email'])
        if @user && @user.authenticate(params['Password'])
            session[:user_id] = @user.id
            redirect_to "/users/#{@user.id}"
        else
            flash[:errors] = ['Invalid Combination']
            redirect_to :back
        end
    end

    def destroy # logout
        reset_session
        redirect_to '/sessions/new'
    end
end

