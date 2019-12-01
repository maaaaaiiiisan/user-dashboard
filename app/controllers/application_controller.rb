class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def yogas
    render html:"hello.world"
  end
end
