class Admin::AdminController < ApplicationController
  before_action :scare_away_babies
  def scare_away_babies
    unless current_user && current_user.is_admin
      redirect_to :users
    end
  end
end
