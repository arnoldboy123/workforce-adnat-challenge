class OrganisationsController < ApplicationController
  before_action :find_org, only: [:edit, :update]

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new(org_params)
    if @organisation.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @organisation.update(org_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def join
    current_user.update(organisation_id: params[:id])
    redirect_to root_path
  end

  private

  def org_params
    params.require(:organisation).permit(:name, :hourly_rate)
  end

  def find_org
    @organisation = Organisation.find(params[:id])
  end
end
