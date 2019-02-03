class SecretsController < ApplicationController
  before_action :require_login
  def show
    if !session[:name]
      redirect_to '/login'
    else

    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
