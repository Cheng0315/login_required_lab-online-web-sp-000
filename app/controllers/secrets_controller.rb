class SecretsController < ApplicationController

  def show
    redirect '/login' unless session[:name]
  end
end
