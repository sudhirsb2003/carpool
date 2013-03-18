class DashboardController < ApplicationController
  def index
   @latest_addition = Profile.all.last(2)
  end
end
