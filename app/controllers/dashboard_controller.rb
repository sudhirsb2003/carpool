class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
   @latest_addition = Profile.order("created_at").page(params[:page]).per(10)
  end
end
