class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:create]

  def new

  end

  def create
    session[:name] = params[:name]
    redirect_to 'show'
  end

end
