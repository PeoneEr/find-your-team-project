class ProfilesController < ApplicationController
  before_filter :authenticate_profile!, except: [:show, :index]
  inherit_resources

  def edit
    edit! {
      unless profile_owner?
        redirect_to profile_path(current_profile.id) and return
      end
    }
  end


  def profile_owner?
    current_profile.id == params[:id].to_i
  end
end
