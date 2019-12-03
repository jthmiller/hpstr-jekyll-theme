#!/bin/bash
#update website

### Do a clean re-install of ruby and bundler/jekyll update
## remove old versions of ruby
brew install rbenv
rbenv init
## close shell
rbenv install 2.6.5
rbenv global 2.6.5


which ruby
# /usr/local/opt/ruby/bin/ruby

gem install yajl-ruby
bundle update yajl-ruby

bundle update jekyll

gem install blankslate
bundle update blankslate

gem install yajl-ruby -v '1.2.1'
bundle update yajl-ruby


export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH
gem install --user-install bundler jekyll
bundle update --bundler

export PATH=/usr/local/opt/ruby/bin:$PATH

bundle exec jekyll build

bundle update rouge
