class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login', alert: "No name provided"
    end
  end

  def destroy
    session[:name] = nil
  end

end