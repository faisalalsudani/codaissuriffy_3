require 'rails_helper'

describe "Navigating artists" do

  let!(:artist) { create :artist}

  it "allows navigation from the detail page of an artist to the artists page" do
    visit artist_url(artist)

    click_link "Artists"

    expect(current_path).to eq(artists_path)
  end

end
