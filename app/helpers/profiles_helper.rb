module ProfilesHelper
  def profile_owner?
    current_profile.id == params[:id].to_i
  end
end
