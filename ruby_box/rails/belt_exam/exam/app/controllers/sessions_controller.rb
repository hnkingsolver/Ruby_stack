class SessionsController < ApplicationController
    before_action :require_login, except:[:new, :create]


    def new 
        #display the page for me to log in
    end 
    
    def create
        user =  User.find_by_email(params[:user][:email])

        if user
            if user.try(:authenticate, params[:user][:password])
                session[:user_id] = user.id

                return redirect_to "/ideas/#{current_user.id}"
            end
            flash[:errors] = ["Password is  incorrect"]
        else
            flash[:errors] = ["Account does not exist."]
        end
        return redirect_to :back
    end 

    def destroy
        session.delete(:user_id) if session[:user_id]

        return redirect_to new_login_path
    end
end
