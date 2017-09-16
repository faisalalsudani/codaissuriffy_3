class SongsController < ApplicationController
  def index
    @songs = Song.all
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

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song.artist, notice: 'Song created.' }
        format.json { render :show, status: :created, location: @artist }
        format.js
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
        format.js
      end
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

    @song.destroy

    respond_to do |format|
      format.html { redirect_to @song.artist, notice: "Song deleted" }
      format.json { head :no_content }
      format.js
    end
  end



  private
  def song_params
    params.require(:song).permit(:name, :url, :lyrics, :artist_id)
  end
end
