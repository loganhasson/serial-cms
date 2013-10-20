require 'sqlite3'
require 'erb'

Dir.foreach("lib/models/concerns") do |file|
  next if file.start_with?('.')
  require_relative "../lib/models/concerns/#{file}" if file.end_with?(".rb")
end

Dir.foreach("lib/models") do |file|
  next if file.start_with?('.')
  require_relative "../lib/models/#{file}" if file.end_with?(".rb")
end