class Admin::ApplicationController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USERNAME_DEV'], password: ENV['ADMIN_PASSWORD_DEV']
end
