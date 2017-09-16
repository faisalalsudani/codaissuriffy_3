class ArtistsController < ApplicationController

  def index
      @artists = Artist.all
  end

  def show
    @artist   = Artist.find(params[:id])
    @songs    = @artist.songs
    @song     = Song.new
    @photos   = @artist.photos
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
        image_params.each do |image|
        @artist.photos.create(image: image)
      end
      redirect_to @artist, notice: "Artist created "
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
    @photos = @artist.photos
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      image_params.each do |image|
        @artist.photos.create!(image: image)
      end
      redirect_to @artist, notice: "Artist updated"
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end




  private
  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  private

  def artist_params
    params.require(:artist).permit(:name,:bio)
  end

end
