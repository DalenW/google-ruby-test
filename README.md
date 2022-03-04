# README

This repo is used to test compiling a docker image with Google's Stackdriver gem.

Steps to replicate / steps I used:

1. `rails new google-ruby-test`
2. Added the docker file, docker ignore, entrypoint.sh, and added the `stackdriver` gem
3. Bulid the image with `docker build -f web.dockerfile -t google-ruby-test .`
