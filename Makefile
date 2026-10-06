.EXPORT_ALL_VARIABLES:

BUNDLE_USER_HOME ?= $(CURDIR)/.bundle-user

.PHONY: setup build serve clean

setup:
	bundle config set --local path vendor/bundle
	bundle install

build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve --host 127.0.0.1

clean:
	bundle exec jekyll clean
