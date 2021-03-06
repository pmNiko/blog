class ProfilesController < ApplicationController
  after_action :verify_authorized

  def edit
    @profile = current_user.profile
    authorize @profile
  end

  def update
    @profile = current_user.profile
    authorize @profile
    @profile.update!(profile_params)
    flash[:notice] = "Your profile has been update."
    render 'edit'
  end

  private

  def profile_params
    params
      .require(:profile)
      .permit(
      	:first_name,
      	:last_name,
      	:date_of_birth,
      	phones_attributes: [
      	  :id,
      	  :phone_type,
      	  :number,
          :_destroy
      	])
  end
end
