require 'rails_helper'

describe "Vistor viewing the list of artists" do

  let!(:artist1) { create :artist, name: "Adele 1"}
  let!(:artist2) { create :artist, name: "Adele 2"}
  let!(:artist3) { create :artist, name: "Adele 3"}


  it "shows all artists" do
    visit artists_url

    expect(page).to have_text("Adele 1")
    expect(page).to have_text("Adele 2")
    expect(page).to have_text("Adele 3")
  end

end
