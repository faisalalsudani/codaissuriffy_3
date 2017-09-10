Photo.destroy_all
Song.destroy_all
Artist.destroy_all


artist1 = Artist.create!(name: "Adele", bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis dolores, nisi ex voluptates corporis, architecto consequatur doloremque perspiciatis expedita temporibus, consequuntur quis esse natus non omnis provident repellendus sunt molestiae.")
artist2 = Artist.create!(name: "Rihanna", bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis dolores, nisi ex voluptates corporis, architecto consequatur doloremque perspiciatis expedita temporibus, consequuntur quis esse natus non omnis provident repellendus sunt molestiae.")
artist3 = Artist.create!(name: "Ice Cube", bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis dolores, nisi ex voluptates corporis, architecto consequatur doloremque perspiciatis expedita temporibus, consequuntur quis esse natus non omnis provident repellendus sunt molestiae.")


song1 = Song.create!(name: "Hello", url: "http://s1.faz-sv.in/Ali/music/aban/Adele - 25(320)/01-Hello.mp3", lyrics: "test",artist: artist1)
song1 = Song.create!(name: "Rolling in the deep", url: "#", lyrics: "test",artist: artist1)
song1 = Song.create!(name: "Work", url: "http://s1.faz-sv.in/Ali/music/aban/Adele - 25(320)/01-Hello.mp3", lyrics: "test",artist: artist2)
song1 = Song.create!(name: "No vasillen", url: "http://s1.faz-sv.in/Ali/music/aban/Adele - 25(320)/01-Hello.mp3", lyrics: "test",artist: artist3)
song1 = Song.create!(name: "Someone like you", url: "http://s1.faz-sv.in/Ali/music/aban/Adele - 25(320)/01-Hello.mp3", lyrics: "test",artist: artist1)


photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dupcbp1ld/image/upload/v1505061623/download_zlbkel.jpg", artist: artist1)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dupcbp1ld/image/upload/v1505065937/rihanna-valerian-london-premiere-1_odf87a.jpg", artist: artist2)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dupcbp1ld/image/upload/v1505065937/hqdefault_vsxvtg.jpg", artist: artist3)
