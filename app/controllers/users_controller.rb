class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
      flash[:notice] = "User Created"
    else
      flash[:errors] = @user.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.save
      flash[:notice] = "User Updated"
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages.join(", ")
      render :edit
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, 
                                   :last_name, 
                                   :email, 
                                   :password,
                                   :password_confirmation,
                                   :street_address, 
                                   :city, 
                                   :state, 
                                   :zip_code, 
                                   :volunteer)
    end
  
end