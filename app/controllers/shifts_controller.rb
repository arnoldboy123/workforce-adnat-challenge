class ShiftsController < ApplicationController
  before_action :find_org
  before_action :find_shift, only: [:edit, :update, :destroy]

  def index
    # Here I store shifts belong to all employee in the company in a @shift array
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

  def edit; end

  def update
    @shift.update(shift_params)
    redirect_to organisation_shifts_path(@org)
  end

  def destroy
    @shift.destroy
    redirect_to organisation_shifts_path(@org)
  end

  private

  def shift_params
    params.require(:shift).permit(:start, :finish, :break_length)
  end

  def find_org
    @org = Organisation.find_by_id(params["organisation_id"])
  end

  def find_shift
    @shift = Shift.find_by_id(params[:id])
  end
end
