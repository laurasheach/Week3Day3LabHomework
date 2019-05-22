require('pry')
require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({'name' => 'Oasis'})
artist1.save()

artist2 = Artist.new({'name' => 'Two Door Cinema Club'})
artist2.save()

artist3 = Artist.new({'name' => 'Calvin Harris'})
artist3.save()

all_artists = Artist.all()

album1 = Album.new({
  'title' => 'Definitely Maybe',
  'genre' => 'Rock',
  'artist_id' => artist1.id
  })
album1.save()

album2 = Album.new({
  'title' => 'Beacon',
  'genre' => 'Rock',
  'artist_id' => artist2.id
  })
album2.save

album3 = Album.new({
  'title' => 'Ready For The Weekend',
  'genre' => 'Dance',
  'artist_id' => artist3.id
  })
album3.save()

album4 = Album.new({
  'title' => 'Be Here Now',
  'genre' => 'Rock',
  'artist_id' => artist1.id
  })
album4.save()

all_albums = Album.all()

album3.delete()
artist3.delete()

artist2.name = "Rudimental"
artist2.update()

album2.title = "We The Generation"
album2.genre = "Dance"
album2.update()


binding.pry
nil
