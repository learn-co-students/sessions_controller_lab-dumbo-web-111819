class SessionsController < ApplicationController

  def new
    # byebug
  end

  def create
    # byebug
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    # byebug
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    # byebug
    session.delete :name
    # byebug
    redirect_to controller: 'application', action: 'hello'
  end

end
