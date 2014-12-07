class SessionsController < ApplicationController
  
#Consulted Stack Overflow: http://stackoverflow.com/questions/5174783/combined-sign-in-and-registration-page
  def new
    @user = User.new
    render action: 'new'
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      
      log_in user
      redirect_to home
      
    else
	
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'

    end

  end


  def destroy
    log_out
    redirect_to root_url
  end

end
