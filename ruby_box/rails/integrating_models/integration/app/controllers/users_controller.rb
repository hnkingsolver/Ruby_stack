class UsersController < ApplicationController
  def index
    # render json:@users
    @users=User.all
  end

  def new
  end

  def create
    # @user = User.create(name: params[:user]['name'])
    @user = User.create(user_params) #new better way so we dont have really long code
    redirect_to '/users'
  end

  def show
    @user = User.find(params[:id])
    render json:@user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def total
    #getting the total number os users
    @users=User.all
    @count=@users.count
  end

  def destroy
  end

  private #made this function private so it cannot be accessed anywhere but here.. can use it when we need to call params
  def user_params
    params.require(:user).permit(:name)
  end
end
