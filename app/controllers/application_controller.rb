class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#method to bring to users profile after sign in
  def after_sign_in_path_for(resource)
    "/signedinuserprofile"
   end
end
