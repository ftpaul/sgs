class UsersController < ApplicationController
	
	before_filter :correct_user

	def new
	  @user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    redirect_to root_url, :notice => "Signed up!"
	  else
	    render "new"
	  end
	end

private
  def correct_user
    redirect_to("/login") unless !current_user
  end

end
