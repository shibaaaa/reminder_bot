class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: ENV['BASIC_AUTH_USER_NAME'], password: ENV['BASIC_AUTH_PASSWORD'] if Rails.env.production?
end
