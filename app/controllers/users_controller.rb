class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # @user = User.find(params[:id])
  end

  def create

  end

  def new

  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end


  private
    def user_params
      params.require(:user).permit(:name, :address, :email)
    end

end
