require 'rails_helper'

describe "Navigating artists" do

  let!(:artist) { create :artist}

  it "allows navigation from the detail page of an artist to the artists page" do
    visit artist_url(artist)

    click_link "Back"

    expect(current_path).to eq(artists_path)
  end

  it "allows navigation from the detail page of an artist to the artists page" do
  visit artists_url

  click_link "View"

  expect(current_path).to eq(artist_path(artist))
end
end
