class SessionsController < ApplicationController
  before_action :require_login


  def new

  end

  def create

    session[:name] = params[:name]
    redirect_to 'show'
  end

end
