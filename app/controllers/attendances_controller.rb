class AttendancesController < ApplicationController
  before_action :check_attendance, only: [:create]
  def index

  end

  def create
    @attend = Attendance.create(attendance_params)
    redirect_to users_path, alert: "successfully attend"
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
      params.permit(:date_attend, :user_id, :status)
    end

    def check_attendance
      user = current_user.id
      if User.find(user)&.attendances&.last.present?
        get_user_attendance_date = User.find(user).attendances.last.date_attend.to_date

        if get_user_attendance_date == Date.today
          redirect_to users_path, notice: "Anda sudah absen"
        end
      end
    end
end
