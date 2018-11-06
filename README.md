# jekyll-bootstrap4
Bootstrap 4 with Jekyll example site.

# Notes

This repository began as a fork of following the steps
in
<https://simpleit.rocks/ruby/jekyll/tutorials/how-to-add-bootstrap-4-to-jekyll-the-right-way/> .

# Testing locally

To test the site locally:

1. `$ git clone https://github.com/otherness-space/jekyll-bootstrap4.git`
2. `$ cd jekyll-bootstrap4/`
3. `$ npm init --force; npm install bootstrap; npm install jquery; npm install popper.js; tree -L 2` // this makes everything work better even if it has been done
4. `$ gem update`
5. `$ bundle exec jekyll build`
6. `$ bundle update`
7. `$ bundle exec make serve` // this makes magic but please note `make: unrecognized option '--incremental`
8. `$ bundle exec jekyll serve --incremental` // --incremental is cool but it works kinda for the local testing

Happy Jekylling!

<hr>

Video generating this repo available at: [![asciicast](https://asciinema.org/a/198975.png)](https://asciinema.org/a/198975)
