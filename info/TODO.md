# Image Hosting Site

## Issues

- [x] Redudant 'Picture@url'
  - [x] Remove from `pictures` table
  - [x] Fix tests, models generators actually
  - [x] Fix views

## User Cases

### User Management 

 - [x] As a visitor I want create a new user account.
 - [x] As a user I want to sign in its existing account, having a correct password
 - [x] As a logged user I want to sign out
 
### Image Management
 - [x] As a site visitor I want to browse images by tag
 - [ ] As a site visitor I want to browse all images of the particular user
 - [ ] As a site visitor I want to see a full-size picture
 - [ ] As a visitor I want to see all tags of the image
 - [x] As a visitor I want to see a username of the uploader
 - [x] As a logged user I want to be able to upload new image
 - [ ] As a logged user I want to be able to delete my image

### Tags Managemnt
 - [ ] As a logged user I want to add new or existing tag to my image
 - [ ] As a logged user I want to delete a tag from my image

### Design
 - [ ] Bootstrap styling
  
## Functional Spec
 - [x] users: sign up, sign in, sign out
 - [ ] image: CRUD, tag/untag, search by tag
 - [ ] tags: CRUD 
 
## Classes
 - [x] pictures
 - [x] user has many pictures
 - [x] tags has many and belongs to many pictures
  
## Views
 - [x] Navigation on all pages
    - [x] link to welcome page
    - [x] for unloged visitor: sign up, sign in; 
    - [x] for logged user: link to user's page, logout
 - [ ] Welcome page, root 
   - [x] stub
   - [ ] picture example, title 
   - [ ] search by tag or username
   - [ ] footer
 - [x] Sign in page
   - [x] for unlogged visitors: sign in form
   - [x] for logged visitors redirection to the welcome page
 - [x] Sign up page
   - [x] for unlogged visitors: sign up form
   - [x] for logged visitors redirection to the welcome page
 - [ ] Tag page:
   - [ ] title: tag
   - [ ] thumbnails with username
   - [ ] search by tags or username
 - [ ] User page:
   - [x] title: username
   - [ ] thumbnails
   - [ ] search by tags or username
   - [ ] for logged correspondent user:
    - [x] uppload button 
 - [ ] Picture page:
   - [x] image, full size
   - [ ] username, link to user's page
   - [x] tags
   - [ ] for logged correspondent user:
    - [ ] delete image button
    - [ ] add/delete tag ability
