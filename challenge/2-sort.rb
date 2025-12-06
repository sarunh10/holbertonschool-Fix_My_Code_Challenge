#!/usr/bin/env ruby

# Take arguments (excluding the script name)
args = ARGV.map { |a| a.to_i }

# Sort numerically
sorted = args.sort

# Print each element on a new line
sorted.each { |n| puts n }

