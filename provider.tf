terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.0"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}