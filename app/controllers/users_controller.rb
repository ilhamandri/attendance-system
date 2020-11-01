class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :user_params, only: [:create]

  def index
    @users = User.where.not(id: 1)
  end

  def create
    @user = User.create(user_params)
    # binding.pry
    if @user.save
      redirect_to users_path, notice: 'User Successfully Created'
    else
      render 'new.html.slim'
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update

  end

  def destroy

  end


  private
    def user_params
      params.require(:user).permit(:name, :address, :email, :password, :password_confirmation)
    end

end
