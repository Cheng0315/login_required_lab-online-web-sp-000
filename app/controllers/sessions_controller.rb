class SessionsController < ApplicationController
  before_action :require_login


  def new

  end

  def create
    session[:name] = params[:name]
    redirect_to 'show'
  end

  private

  def require_login
    redirect_to '/new' unless session.include? :name
  end
end
