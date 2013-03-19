class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
   @latest_addition = Profile.all.last(2)
  end
end
