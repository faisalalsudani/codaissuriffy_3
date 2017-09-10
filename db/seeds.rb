Song.destroy_all
Artist.destroy_all

artist1 = Artist.create!({name: "Adele"})

song1 = Song.create!( { name: "Hello", lyrics: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", url: "https://goo.gl/wB6q9q", artist: artist1 } )
song2 = Song.create!( { name: "Someone like you", lyrics: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", url: "https://goo.gl/wB6q9q", artist: artist1 } )
song3 = Song.create!( { name: "Rolling in the deep", lyrics: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", url: "https://goo.gl/wB6q9q", artist: artist1 } )

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dupcbp1ld/image/upload/v1505030418/fuvtmcfvxv5skcbbm82p.jpg", artist: artist1)
