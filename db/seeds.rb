Photo.destroy_all
Song.destroy_all
Artist.destroy_all


artist1 = Artist.create!(name: "Adele", bio: "text")


song1 = Song.create!(name: "Hello", url: "#", lyrics: "test",artist: artist1)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dupcbp1ld/image/upload/v1505061623/download_zlbkel.jpg", artist: artist1)
