class HomeController < ApplicationController
  before_action :authenticate_user! , only: [:index]

  def index
    @users = User.all.where.not(id: current_user.id)
  end

  def about
    
  end

end
