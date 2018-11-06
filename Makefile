NPM := npm
VENDOR_DIR := assets/vendor/
JEKYLL := jekyll

install:
	$(NPM) install

include-npm-deps:
	mkdir -p $(VENDOR_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js.map $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js.map $(VENDOR_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(VENDOR_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(VENDOR_DIR)

build: install include-npm-deps
	$(JEKYLL) build

serve: install include-npm-deps
	# JEKYLL_ENV=production $(JEKYLL) serve
	JEKYLL_ENV=development $(JEKYLL) serve

generate-githubpages:
	rm -fr JEKYLL_ENV=production $(JEKYLL) build --baseurl https://otherness-space.github.io/jekyll-materialize/ -d && touch .nojekyll
