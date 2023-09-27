// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import 'popper'
import 'bootstrap'

import GLightbox from 'glightbox';

const lightbox = GLightbox({
  'href': 'https://www.youtube.com/watch?v=iJKCj8uAHz8',
  'type': 'video',
  'source': 'youtube', 
  'width': 900,
});

