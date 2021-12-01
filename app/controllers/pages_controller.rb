class PagesController < ApplicationController
  def home
    if current_user.organisation_id.nil?
      @organisations = Organisation.all
      @organisation = Organisation.new
    else
      @organisation = Organisation.find_by_id(current_user.organisation_id)
    end
  end
end
