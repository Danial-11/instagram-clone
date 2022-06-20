# README
# Instagram Clone
This is a clone of instagram, where different users can register themselves and post their pictures for others to view, like and comment
Users are also capable of following other users and view their posts and stories.
## Architecture and models
MVC model is being used in this app with rails version `5.2.8`
1. User can sign up or sign in
2. Can create posts (multiple images as well)
3. Can create stories with time limit of 24 hours 
4. Can follow other users and see their posts
5. Public and Private accounts feature
6. Can Like their posts
7. Can comment on others posts
## Ruby version
Ruby `2.7.1`
## Development
For running the server : `rails server`
For creating demo users: `rails db:seed`
## Dependencies
1. `Cloudinary`
2. `CarrierWave`
3. `Devise`
