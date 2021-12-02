class ShiftsController < ApplicationController
  before_action :find_org

  def index
    @shifts = current_user.shifts
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.user = current_user
    if @shift.save
      redirect_to organisation_shifts_path(@org)
    else
      render :new
    end
  end

  private
  def shift_params
    params.require(:shift).permit(:start, :finish, :break_length)
  end

  def find_org
    @org = Organisation.find_by_id(params["organisation_id"])
  end
end
