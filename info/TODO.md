# Image Hosting Site

## Issues
- [ ] User's page is used as a pics browser option, not as user cabinet only, this features have to be separated;
- [ ] "Upload one" button on main page is void;
- [x] Picture upload w/o validators. gem 'file_validators'
- [x] No link on user page from the picture view.
- [x] Picture upload button is seen for the unloged user.  Asks for the authorization thought.
- [x] Add flashes.
- [x] `uniqueness: true` to the `Tag` name.
- [x] Add tag form should be avaible only for the uploader
- [x] Tags and add new tag form are not inline
- [x] Remove the 'Sign Up' link from the navbar
- [x] Multiply 'No tags yet' on the pics list look annoing.
- [x] Navbar overlaps and blocks upper part of the page.
- [x] Add glightbox https://www.csalmeida.com/log/managing-js-and-css-assets-in-rails-7/
- [x] Ensure to delete attachment deleting a picture.  Use `destroy`.
- [x] 'rails_project_setup.sh' wipes out `importmap.rb`,`application.js`, and perhaps something else. Almost.  Seems it is thaаt `bin/rails *:install`.  `config/initializers/assets.rb` not affected.  
- [x] Redudant 'Picture@url'
  - [x] Remove from `pictures` table
  - [x] Fix tests, models generators actually
  - [x] Fix views
- [x] Couldn't find User with 'id'=sign_out` when click on 'Sign out' at nav. - https://github.com/heartcombo/devise/wiki/How-To:-Add-sign_in,-sign_out,-and-sign_up-links-to-your-layout-template
- [x] Install Bootstrap
  - [x] https://eagerworks.com/blog/import-maps-in-rails-7
  - [x] https://bootrails.com/blog/rails-7-bootstrap-5-tutorial/
  - [x] https://jasonfleetwoodboldt.com/courses/rails-7-crash-course/rails-7-importmap-rails-with-bootstrap-stimulus-turbo-long-tutorial/

## Security

Next provided via the `cancancan`:
  - [x] Tests https://github.com/CanCanCommunity/cancancan/blob/develop/docs/testing.md
  - [x] User can delete only his upploads
  - [x] User can tag only his upploads
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

### Tags Managemnt
 - [x] As a logged user I want to add new or existing tag to my image
 - [x] As a logged user I want to delete a tag from my image

## Visual Design
 - [ ] Bootstrap styling
   - [x] https://www.youtube.com/watch?v=iJKCj8uAHz8
   - [x] Navbar
   - [ ] Login page
   - [ ] Fix pages:
      - [x] Landing
      - [x] Pic show
        - [ ] Fix/make links
      - [ ] Tags list 
      - [x] Tags show
      - [x] User page
  
## Functional Spec
 - [x] users: sign up, sign in, sign out
 - [x] image: CRUD, tag/untag, search by tag
 - [x] tags: CRD 
 
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
   - [x] picture example, title 
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
   - [x] title: username
   - [x] thumbnails
   - [ ] search by tags or username
   - [x] for logged correspondent user:
    - [x] uppload button 
 - [x] Picture page:
   - [x] image, full size
   - [x] username, link to user's page
   - [x] tags
   - [x] for logged correspondent user:
    - [x] delete image button
    - [x] add/delete tag ability
