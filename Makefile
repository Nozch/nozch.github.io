JEKYLL_IMAGE = jekyll/jekyll:latest
JEKYLL_PORT  = 4000
LR_PORT      = 35729
RUN = docker run --rm -it \
  -p $(JEKYLL_PORT):$(JEKYLL_PORT) -p $(LR_PORT):$(LR_PORT) \
  -v "$$(pwd):/srv/jekyll" \
  -v "$$(pwd)/vendor/bundle:/usr/local/bundle" \
  -w /srv/jekyll --user $$(id -u):$$(id -g)

serve:
	$(RUN) $(JEKYLL_IMAGE) \
	jekyll serve \
	  -H 0.0.0.0 -P $(JEKYLL_PORT) \
	  --livereload --livereload-port $(LR_PORT) \
	  --drafts --future --unpublished \
	  --config _config.yml,_config.local.yml

