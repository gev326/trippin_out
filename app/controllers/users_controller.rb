class UsersController < ApplicationController


  def index
    @users = User.all
  end

def show
end

  def new
    @user = User.new
end

def edit
end

def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to trip_index_path
    else
      render 'new'
    end
  end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:name, :phone, :balance, :email, :password, :password_confirmation)
    end

end
