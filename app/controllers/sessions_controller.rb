class SessionsController < ApplicationController
	
	before_filter :correct_user, only: :new

	def new
	end

	def create
	  user = User.authenticate(params[:username], params[:password])
	  if user
	    session[:user_id] = user.id
	    redirect_to root_url, :notice => "Logged in!"
	  else
	    flash.now.alert = "Invalid username or password"
	    render "new"
	  end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url, :notice => "Logged out!"
	end

	private
	  def correct_user
	    redirect_to("/") unless !current_user
	  end
end
