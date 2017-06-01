class SongsController < ApplicationController
  def index
    @billboard = Billboard.find(params[billboard_id])
    @songs = @billboard.song.all
  end

  def show
    @billboard = Billboard.find(params[billboard_id])
    @song = @billboard.song.find(params[:id])
  end

  def new
    @billboard = Billboard.find(params[billboard_id])
    @song = @billboard.song.new
  end

  def edit
    @billboard = Billboard.find(params[billboard_id])
    @song = @billboard.song.find(params[:id])
  end

  def create
    @billboard = Billboard.find(params[billboard_id])
    @song = @billboard.song.new(song_params)

      if @song.save
        redirect_to songs_path
      else
        render :new
      end
  end

  def update
    @billboard = Billboard.find(params[billboard_id])
    @song = @billboard.song.find(params[:id])
      if @song.update(song_params)
          redirect_to songs_path
      else
        render :edit
      end
  end


  def destroy
    @billboard = Billboard.find(params[billboard_id])
    @song = @billboard.song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

private

  def song_params
    params.require(:song).permit(:song_title, :song_artist)
  end

end