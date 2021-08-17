data "spotify_search_track" "bob" {
  artist = "Bob Dylan"
  #This will limit the number of songs by this artist, Max is 10
  limit  = 5
}

data "spotify_search_track" "queen" {
  artist = "Freddie Mercury"
}

data "spotify_search_track" "led" {
  artist = "Led Zeppelin"
}

data "spotify_search_track" "pink" {
  artist = "Pink Floyd"
}

data "spotify_search_track" "rem" {
  artist = "R.E.M"
}

data "spotify_search_track" "deepp" {
  artist = "Deep Purple"
}

# data "spotify_search_track" "your-artist" {
#   artist = "your artist name goes here"
# }

resource "spotify_playlist" "playlist" {
  name        = "Terraforming Songs"
  description = "Lets Listen to some songs eh"
  public      = true

  tracks = flatten([
    data.spotify_search_track.bob.tracks[*].id,
    data.spotify_search_track.queen.tracks[*].id,
    data.spotify_search_track.led.tracks[*].id,
    data.spotify_search_track.pink.tracks[*].id,
    data.spotify_search_track.rem.tracks[*].id,
    data.spotify_search_track.deepp.tracks[*].id,
    # data.spotify_search_track.your-artist.tracks[*].id,
  ])
}

