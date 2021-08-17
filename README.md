# Using Terraform to create Spotify Playlists of your Favorite Artists

Visit the original creator [here](https://github.com/conradludgate)

Things you need:
* Spotify Account / [Developer](https://developer.spotify.com/) 
* An Authorization Server
* Bit of terraform


### Export

```
export SPOTIFY_CLIENT_REDIRECT_URI=http://localhost:27228/spotify_callback
```

create .env file with this:
```
SPOTIFY_CLIENT_ID=
SPOTIFY_CLIENT_SECRET=
```

Rename ```terraform.tfvars.sample``` to ```terraform.tfvars```
### Run Authorization Server
```docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy```

[More Info](https://github.com/conradludgate/terraform-provider-spotify/tree/main/spotify_auth_proxy)

### Modify ```main.tf``` content to match your needs: