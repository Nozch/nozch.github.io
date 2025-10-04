serve:
	docker run --rm -it \
	 -p 4000:4000 -p 35729:35729 \
	 -v "$$(pwd):/srv/jekyll" \
	 -v "$$(pwd)/vendor/bundle:/usr/local/bundle" \
	 -w /srv/jekyll --user $$(id -u):$$(id -g) \
	 jekyll/jekyll:latest \
	 jekyll serve --livereload --drafts --future --host 0.0.0.0
