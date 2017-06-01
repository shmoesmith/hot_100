class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = song.find(params[:id])
  end

  def new
    @song = song.new
  end

  def edit
    @song = song.find(params[:id])
  end
end
