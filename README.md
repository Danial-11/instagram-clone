# README
# Instagram Clone
This is a clone of instagram, where different users can register themselves and post their pictures for others to view, like and comment
Users are also capable of following other users and view their posts and stories.
## Architecture and models
The core models of this application are Users, Posts and Comments. The Users model is self-associated, meaning the users are able to follow each other, and the Post model is associated with the user with has_many association. The Comments model is associated with the post with a has many association as well.
## Ruby version
Ruby version used in this application is: 2.7.0
## Development
For a new developer, you can start a development server with the "rails s" command on the terminal. To get started with the project, you need to have basic knowledge of the MVC architecture and the rails basic directory structure.
## Dependencies
This application requires cloudinary for file upload storage, bootstrap cdn, font-awesome cdn and many other dependencies, which can be found in the gemfile of this project.
