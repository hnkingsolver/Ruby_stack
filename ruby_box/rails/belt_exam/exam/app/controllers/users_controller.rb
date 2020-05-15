class UsersController < ApplicationController
    # skip_before_filter :require_login
    before_action :require_login, only:[:show]

    def new

    end 


    def create
        user = User.create(user_params)

        if user.valid?
            session[:user_id] = user.id
            return redirect_to "/ideas/#{current_user.id}"
        else
            flash[:errors] = user.errors.full_messages
            return redirect_to :back
        end
    end 


    def show
        @user = User.find(params[:id])
    end



    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :alias, :password, :password_confirmation)
    end
end
