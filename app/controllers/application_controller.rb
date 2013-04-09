class ApplicationController < ActionController::Base
  protect_from_forgery

  #REV: put controller only methods in your app controller
  #Good idea to DRY up your code!
  include ApplicationHelper
end
