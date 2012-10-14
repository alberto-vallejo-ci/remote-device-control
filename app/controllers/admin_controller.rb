class AdminController < ApplicationController
  def index
  end

  def authenticate
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |user, password|
        user == ENV['USER'] && password == ENV['PASSWORD']
      end
    end
  end
end
