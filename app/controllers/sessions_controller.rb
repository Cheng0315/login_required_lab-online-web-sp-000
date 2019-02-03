class SessionsController < ApplicationController
  before_action :require_login


  def new

  end

  def create
    binding.pry
    session[:name] = params[:name]
    redirect_to 'show'
  end

end
