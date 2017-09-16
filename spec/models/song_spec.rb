require 'rails_helper'

RSpec.describe Song, type: :model do



    it "belongs to a artist" do
      artist = build(:artist)
      song = artist.songs.build(name: "hello")

      expect(song.artist).to eq(artist)
    end

end
