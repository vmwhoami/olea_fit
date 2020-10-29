class UsersController < ApplicationController
  layout  "athentication", only: [:new,:edit]
  before_action :logged_in? , only: [:index, :show, :edit, :destoroy]
  before_action :is_curremt_user?, only: %i[edit]
  before_action :find_user, only: [ :edit, :update, :destroy,:show]


  def followers
  end

  def following
  end

  def index
    @users = User.all
  end

  def new
   @user = User.new
  end

  def create 
    @user = User.new(permitted_params)
    if @user.save
      log_in(@user)
      redirect_to user_path(@user), notice: 'User was successfully created.' 
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end

  end

def show
end

def edit
end

def update
  respond_to do |format|
    if @user.update(permitted_params)
      format.html { redirect_to @user, notice: 'User was successfully updated.' }
      format.json { render :show, status: :ok, location: @user }
    else
      format.html { render :edit }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end
 
def destroy
  @user.destroy
  respond_to do |format|
    format.html { redirect_to user_url, notice: 'User was successfully destroyed.' }
    format.json { head :no_content }
  end
end
 

private

def is_curremt_user?
  redirect_to user_path(find_user) if !current_user?(find_user) 
end
def find_user
  @user = User.find(params[:id])
end

def permitted_params
  params.require(:user).permit(:username, :fullname, :photo, :coverimage)
end

end