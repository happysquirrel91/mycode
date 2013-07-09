class ApplicationController < ActionController::Base
  protect_from_forgery
  def method
    cookies[:login] = { :value => "XJ13", :expires => Time.now + 3600}
  end
end
