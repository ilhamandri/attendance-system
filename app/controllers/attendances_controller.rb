class AttendancesController < ApplicationController
  before_action :check_attendance, only: [:create]

  def index
    @user_id = params[:user_id]
    @user_attendance = User.find(params[:user_id]).attendances.all
    # binding.pry
  end

  def create
    @attend = Attendance.create(attendance_params)
    redirect_to users_path, notice: "successfully attend"
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
    user_id = params[:user_id]
    @attend = Attendance.find(params[:id])
    @attend.destroy
    redirect_to attendances_path(user_id: user_id), notice: "Data Berhasil dihapus"
    # binding.pry
  end

  private
    def attendance_params
      params.permit(:date_attend, :user_id, :status)
    end

    def check_attendance
      user = current_user.id
      if User.find(user)&.attendances&.last.present?
        get_user_attendance_date = User.find(user).attendances.last.date_attend.to_date

        if get_user_attendance_date == Date.today
          redirect_to users_path, alert: "Anda sudah absen"
        end
      end
    end
end
