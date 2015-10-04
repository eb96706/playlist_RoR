class SessionsController < ApplicationController
	def create #login
		user = User.find_by(email: session_params[:email]) #does the email exit in the db
		if user
			if user.authenticate(session_params[:password]) #email exists and now compare it with password
				session[:user_id] = user.id # password is correct, now store user's id in session variable
				redirect_to '/songs/index'
			else
				flash[:error] = 'Invalid email/password combination' #bad pw
				redirect_to '/'
			end
		else
			flash[:error] = 'Invalid email/password combination' #bad email
			redirect_to '/'
		end	
	end

	def destroy #logout
		session[:user_id] = nil
		redirect_to '/'
		
	end

	private
	def session_params
		params.require(:user).permit(:email, :password)
	end
end
