class AdminController < ApplicationController
  before_filter :is_admin?

  def index
  end

  def is_admin? 
    redirect_to :root unless current_user.try(:admin?)
  end
end
