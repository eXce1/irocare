class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @Users = User.all
    if user_signed_in?
      redirect_to pages_dashboard_path
    end
  end


end
