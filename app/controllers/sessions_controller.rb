class SessionsController < ApplicationController

  def create_with_omniauth
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_path, notice: "Sign in with instagram"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Sign out"
  end

  def omniauth_failure
    redirect_to root_path, error: "There was an erro during the Log in process please try again"
  end

end
