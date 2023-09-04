# Image Hosting Site

## Issues

- [x] Redudant 'Picture@url'
  - [x] Remove from `pictures` table
  - [x] Fix tests, models generators actually
  - [x] Fix views
- [x] Couldn't find User with 'id'=sign_out` when click on 'Sign out' at nav. - https://github.com/heartcombo/devise/wiki/How-To:-Add-sign_in,-sign_out,-and-sign_up-links-to-your-layout-template
- [ ] Ensure to delete attachment deleting a pictures
- [ ] Newly uploaded image doesn't seen on user page without page reload

## Security

Next provided via the `cancancan`:
  - [x] Tests https://github.com/CanCanCommunity/cancancan/blob/develop/docs/testing.md
  - [x] User can delete only his upploads
  - [ ] User can tag only his upploads
  - [x] Only logged user can upload 
  - [ ] https://guides.rubyonrails.org/active_storage_overview.html#authenticated-controllers


## User Cases

### User Management 

 - [x] As a visitor I want create a new user account.
 - [x] As a user I want to sign in its existing account, having a correct password
 - [x] As a logged user I want to sign out
 
### Image Management
 - [x] As a site visitor I want to browse images by tag
 - [x] As a site visitor I want to browse all images of the particular user
 - [x] As a site visitor I want to see a full-size picture
 - [x] As a visitor I want to see all tags of the image
 - [x] As a visitor I want to see a username of the uploader
 - [x] As a logged user I want to be able to upload new image
 - [x] As a logged user I want to be able to delete my image
 - [ ] As a logged user owning the image I want to create and delete its tags

### Tags Managemnt
 - [ ] As a logged user I want to add new or existing tag to my image
 - [ ] As a logged user I want to delete a tag from my image

## Visual Design
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
 - [x] Tag page:
   - [ ] title: tag
   - [ ] thumbnails with username
   - [ ] search by tags or username
 - [x] User page:
   - [ ] title: username
   - [x] thumbnails
   - [ ] search by tags or username
   - [x] for logged correspondent user:
    - [x] uppload button 
 - [ ] Picture page:
   - [x] image, full size
   - [x] username, link to user's page
   - [x] tags
   - [ ] for logged correspondent user:
    - [x] delete image button
    - [ ] add/delete tag ability
