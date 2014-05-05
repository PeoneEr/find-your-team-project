class StartPagesController < ApplicationController
  def index
    if profile_signed_in?
      redirect_to teams_path
    end
  end
end
