#!/usr/bin/env ruby

# Keep only valid integer strings
numbers = ARGV.select { |a| a.match?(/\A-?\d+\z/) }
              .map(&:to_i)

# Sort numerically
sorted = numbers.sort

# Print each number
sorted.each { |n| puts n }
