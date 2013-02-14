class ApplicationController < ActionController::Base
  protect_from_forgery
  http_basic_authenticate_with name: BASIC_AUTH_USR, password: BASIC_AUTH_PWD
end
