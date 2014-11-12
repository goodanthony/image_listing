require 'rubygems'
require "minitest/autorun"

libpath = File.dirname(__FILE__)
$LOAD_PATH.unshift File.join(libpath, "..", "lib")



require_relative "../lib/image_listing"
