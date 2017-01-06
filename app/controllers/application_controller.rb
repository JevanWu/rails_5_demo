class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_user_cookie

  private

  def set_user_cookie
    if current_user.present?
      cookies.signed[:user_id] = current_user.id
    end
  end
end
