class SongsController < ApplicationController
  def index
    @songs = Song.all
    @song = Song.new
  end

  def show
    artist = Artist.find(params[:artist_id])
    @song = artist.songs.find(params[:id])
  end

  def new
    artist = Artist.find(params[:artist_id])
    @song = artist.songs.build
  end

  def create
    artist = Artist.find(params[:artist_id])
    @song = artist.songs.create(song_params)
    if @song.save
      redirect_to @song.artist, notice: "Song craeted"
    else
      render :new
    end
  end

  def edit
    artist = Artist.find(params[:artist_id])
    @song = artist.songs.find(params[:id])
  end

  def update
    artist = Artist.find(params[:artist_id])

    @song = artist.songs.find(params[:id])

    if @song.update_attributes(song_params)
      redirect_to @song.artist, notice: "Song updated"
    else
      render :edit
    end

  end

  def destroy
    artist = Artist.find(params[:artist_id])

    @song = Song.find(params[:check])
    @song.destroy

    redirect_to @song.artist
  end

  private
  def song_params
    params.require(:song).permit(:name, :url, :lyrics, :artist_id)
  end
end
