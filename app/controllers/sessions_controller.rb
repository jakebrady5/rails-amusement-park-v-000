class SessionsController < ApplicationController

  def new
  end

  def create
    session[:user_id] = params[:id]
    redirect_to user_path(User.find(params[:id]))
  end

  def destroy
    session.destroy
  end

end
