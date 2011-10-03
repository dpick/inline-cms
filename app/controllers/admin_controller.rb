class AdminController < ApplicationController
  before_filter :must_be_admin

  def index
  end

  def must_be_admin
    redirect_to :root unless current_user.try(:admin?)
  end
end
