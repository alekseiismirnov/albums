# Image Hosting

## User Cases

### User Management 

 - [ ] As a visitor I want create new user account.
 - [ ] As a user I want to log in existing account, having a correct password
 - [ ] As a user I want to log out
 
### Image Management
 - [ ] As a site visitor I want to browse images by tag
 - [ ] As a site visitor I want to browse all images of the particular user
 - [ ] As a visitor I want to see a full-size picture
 - [ ] As a visitor I want to see all tags of the image
 - [ ] As a visitor I want to see a username of the uploader
 
### Tags Managemnt
 - [ ] As a logged user I want to add new or existing tag to my image
 - [ ] As a logged user I want to delete a tag from my image
  
## Functional Spec
 - [ ] users: sign up, sign in, login, logout
 - [ ] image: CRD, tag/untag, search by tag
 - [ ] tags: CRD 
 
 ## Classes
 - [ ] pictures
 - [ ] user has many pictures
 - [ ] tags has many and belongs to many pictures
  
 - ## Views
 - [ ] Welcome page: 
   - [ ] navigation 
     - [ ] link to welcome page
     - [ ] for unloged visitor: sign up, sign in; 
     - [ ] for logged user: link to users page, logout
   - [ ] picture example, title 
   - [ ] search by tag or username
   - [ ] footer
 - [ ] Sign in page
   - [ ] for unlogged visitors: sign in form
   - [ ] for logged visitors redirection to the welcome page
 - [ ] Sign up page
   - [ ] for unlogged visitors: sign up form
   - [ ] for logged visitors redirection to the welcome page
 - [ ] Tag page:
   - [ ] navigation
   - [ ] title: tag
   - [ ] thumbnails with username
   - [ ] search by tags or username
   - [ ] footer
 - [ ] User page:
   - [ ] navigation
   - [ ] title: username
   - [ ] thumbnails
   - [ ] search by tags or username
   - [ ] for logged correspondent user:
   -   [ ] uppload new image button 
 - [ ] Picture page:
   - [ ] image, full size
   - [ ] username, lin to user's page
   - [ ] tags
   - [ ] for logged correspondent user:
     - [ ] delete image button
     - [ ] add/delete tag ability
