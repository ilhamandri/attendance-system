class AttendancesController < ApplicationController
  # before_action :check_attendance, only: [:create]
  def index

  end

  def create
    # curret_user
  end

  def new

  end

  def edit

  end

  def show

  end

  def update

  end

  def destoy

  end

  private
    def attendance_params
      params.require(:attendance).permit(:date_attend)
    end

    # def check_attendance
    #   return
    # end
end
