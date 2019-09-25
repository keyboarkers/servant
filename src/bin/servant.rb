#!/usr/bin/ruby

require 'optparse'

opts = OptionParser.new
opts.banner = "Usage: servant [options]"


opts.on("-l", "--list", "Lists all active vagrant") do

end


opts.on("-h", "--help", "Prints this help") do
  puts opts
end

# This option won't appear in the help section. It should only be called by service
opts.on("runserver") do
  puts "he"
end

begin
  # Print help if no argument is received
  if ARGV.length == 0 then puts opts else opts.parse!(ARGV) end
rescue OptionParser::InvalidOption => e
  puts e
  puts opts
  exit(1)
end