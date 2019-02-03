class SecretsController < ApplicationController

  def show
    redirect_to '/login' unless session[:name]
  end
end
