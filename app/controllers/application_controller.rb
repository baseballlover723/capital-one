class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_numb

  def set_numb
    5 / (ENV["NUMB"] || 1).to_i
  end

end

