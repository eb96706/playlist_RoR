class AddsController < ApplicationController
	def create
		add = Add.new(add_params)
		add.user = User.find(session[:user_id])
		if !add.save
			flash[:errors] = add.errors.full_messages	
		end
		redirect_to '/songs/index'
	end

	private
	def add_params
		params.permit(:add, :song_id)
		
	end
end
