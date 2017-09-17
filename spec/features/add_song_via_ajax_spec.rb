require 'rails_helper'

feature 'Add song via Ajax', js: true do

    let(:artist1) { create :artist }
    let!(:song1) { create :song, artist: artist1, name: "song1"}

    scenario 'Add a new song' do
    # Point your browser towards the artist path
    visit artist_path(artist1.id)

    page.find(:css, ".add-song").click
    # sleep(1)
    expect(page).to have_content('song1')
    end

    scenario 'Deleting a song' do
    visit artist_path(artist1.id)

    page.find(:css, ".delete-song").click
    sleep(1)

    end
end
