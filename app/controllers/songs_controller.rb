class SongsController < ApplicationController
  def create
  	new_song = Song.create(song_params)
  	if new_song.valid?
  		flash[:notice] = "You successfull add a song"
  		redirect_to '/songs/index'
  	else
  		flash[:errors] = new_song.errors.full_messages
  		redirect_to '/songs/index'
  	end

  end

  def index
  	@user = User.find(session[:user_id])
  	@songs = Song.all
  end

  def edit
  end

  def new
  end

  def show
    @song = Song.find(params[:id])
    
  end


  private

  def song_params
  	params.require(:song).permit(:title, :artist)	
  end

end
