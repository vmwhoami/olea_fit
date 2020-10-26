class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
   @user = User.new
  end

  def create 
    @user = User.new(permitted_params)
    if @user.save
      flash[:success] = "User created successfully"
      #Login the user 
      redirect_to user_path(@user)
    else
      flash.now[:error] 
      render 'new'
    end

  end

def show
  @user = User.find(params[:id])
end

  def destroy

  end

private

def find_user
  @user = User.find(params[:id])
end

def permitted_params
  params.require(:user).permit(:username, :fullname)
end

end