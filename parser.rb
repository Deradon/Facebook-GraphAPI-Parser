#!/usr/bin/env ruby
require 'optparse'
require 'rubygems'
require 'open-uri'
require 'nokogiri'

require 'lib/core_ext'
require 'lib/my_generator'
require 'lib/graph_parser'
require 'lib/parsed_object'

# This hash will hold all of the options
# parsed from the command-line by OptionParser.
options = {}

optparse = OptionParser.new do|opts|
  # Set a banner, displayed at the top of the help screen.
  opts.banner = "Usage: parser.rb [options]"

  # Define the options, and what they do
  options[:output] = "output/"
  opts.on( '-o', '--output PATH', 'Directory where to save parsed files' ) do |dir|
    options[:output] = dir
  end

  options[:template] = "graph_object.rb.erb"
  opts.on( '-t', '--template FILE', 'Which template to use' ) do |file|
    options[:template] = file
  end

  options[:extension] = ".rb"
  opts.on( '-e', '--extension STRING', 'Which file extension to use for new files' ) do|e|
    options[:extension] = e
  end

  # This displays the help screen, all programs are assumed to have this option.
  opts.on( '-h', '--help', 'Display this screen' ) do
    puts opts
    exit
  end
end

# Parse the command-line. Remember there are two forms
# of the parse method. The 'parse' method simply parses
# ARGV, while the 'parse!' method parses ARGV and removes
# any options found there, as well as any parameters for
# the options. What's left is the list of files to resize.
optparse.parse!

parser = GraphParser.new
result = parser.parse_base

result.each do |r|
  generator = MyGenerator.new(options[:template],options[:output],r[:klass])
  generator.run("#{options[:output]}#{r[:title]}#{options[:extension]}")
end

