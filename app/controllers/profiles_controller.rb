class ProfilesController < ApplicationController
  inherit_resources

  def settings
    @profile = Profile.find(params[:id])
  end
end
