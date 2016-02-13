class SessionsController < ApplicationController
  include SessionsHelper
  
  def new

  end
  def create
  	user = User.find_by(email: params[:session][:email])
  	if user
  		log_in user
  		redirect_to user
  	else
  		render 'new'
  	end
  end
  def destroy
  end
end
