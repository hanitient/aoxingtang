class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  $device
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :detect_browser

private
   
def detect_browser
  case request.user_agent
    when /iPad/i
      request.variant = :tablet
      $device=3
    when /iPhone/i
      request.variant = :phone
       $device=1
    when /Android/i && /mobile/i
      request.variant = :phone
       $device=1
    when /Android/i
      request.variant = :tablet
       $device=3
    when /Windows Phone/i
      request.variant = :phone
       $device=1
    else
      request.variant = :desktop
       $device=2
   end
end

end
