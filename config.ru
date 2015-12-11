require 'rubygems'
require 'bundler'
require 'json'

Bundler.require

require './application.rb'

run Sinatra::Application
