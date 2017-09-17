require 'rails_helper'

describe "Visitor see the songs of an artist" do

  let(:artist) { create :artist }
  let!(:song1) { create :song, artist: artist, name: "song1"}
  let!(:song2) { create :song, artist: artist, name: "song2"}

  it "shows all his songs" do
      visit artist_url(artist)

      expect(page).to have_text("song1")
      expect(page).to have_text("song2")
    end





end
