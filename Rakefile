#!/usr/bin/env ruby
require 'rubygems'

namespace :gem do
  desc "Build the sparql-service-description-#{File.read('VERSION').chomp}.gem file"
  task :build do
    sh "gem build sparql-service-description.gemspec && mv sparql-service-description-#{File.read('VERSION').chomp}.gem pkg/"
  end

  desc "Release the sparql-service-description-#{File.read('VERSION').chomp}.gem file"
  task :release do
    sh "gem push pkg/sparql-service-description-#{File.read('VERSION').chomp}.gem"
  end
end
