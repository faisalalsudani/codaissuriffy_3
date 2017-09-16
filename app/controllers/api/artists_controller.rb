class Api::ArtistsController < ApplicationController
  def index
    render status: 200, json: {
      artists: Artist.all
    }.to_json
  end

  def show
    artist = Artist.find(params[:id])

    render status: 200, json: {
      artist: artist
    }.to_json
  end


    def create
      song = Song.new(song_params)

      if song.save
        render status: 201, json: {
          message: "Song created whith ajax",
          song: song
        }.to_json
      else
        render status: 422, json: {
          errors: song.errors
        }.to_json
      end
    end


end
