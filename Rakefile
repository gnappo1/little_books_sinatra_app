ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

def reload
    load_all './app'
end

task :console do
    puts "Reloading your application..."
    reload
    puts "Starting pry now"
    Pry.start
end