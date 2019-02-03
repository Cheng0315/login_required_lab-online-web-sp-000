class SecretsController < ApplicationController
  before_action :require_login

  def show

  end

  private

  def require_login
    redirect '/new' unless session.include? :name
  end
end
