class ShiftsController < ApplicationController
  before_action :find_org

  def index
    @shifts = []
    User.where(organisation_id: @org.id).each do |user|
      user.shifts.each do |shift|
        @shifts << shift
      end
    end
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
