# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "glightbox" # @3.2.0
pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true