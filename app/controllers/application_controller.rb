class ApplicationController < ActionController::Base
  protect_from_forgery


  protected

  def after_sign_up_path_for(resource)
    'new_profile_path'
  end

end
