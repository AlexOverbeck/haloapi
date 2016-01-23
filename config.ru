require 'rubygems'
require 'bundler'
require 'json'
require 'sass/plugin/rack'

Bundler.require

require './application.rb'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run Sinatra::Application
