class SessionsController < ApplicationController

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
