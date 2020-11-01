class AttendancesController < ApplicationController

  def index

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

  def destoy

  end

  private
    def attendance_params
      params.require(:attendance).permit(:date_attend)
    end
end
