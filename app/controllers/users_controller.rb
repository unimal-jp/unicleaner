class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @schedule = @user.schedules.build
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to root_url
    else
      render :edit
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :first_date_of_week, :password, :password_confirmation)
    end
end
