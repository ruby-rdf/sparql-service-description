#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |spec|
  spec.version            = File.read('VERSION').chomp
  spec.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  spec.name               = "sparql-service-description"
  spec.homepage           = "https://github.com/ruby-rdf/sparql-service-description/"
  spec.license            = 'Unlicense'
  spec.summary            = "SPARQL Service Description for RDF.rb."
  spec.description        = spec.summary
  gem.metadata           = {
    "documentation_uri" => "https://ruby-rdf.github.io/sparql-service-description",
    "bug_tracker_uri"   => "https://github.com/ruby-rdf/sparql-service-description/issues",
    "homepage_uri"      => "https://github.com/ruby-rdf/sparql-service-description",
    "mailing_list_uri"  => "https://lists.w3.org/Archives/Public/public-rdf-ruby/",
    "source_code_uri"   => "https://github.com/ruby-rdf/sparql-service-description",
  }

  spec.authors            = ['Gregg Kellogg']
  spec.email              = 'public-rdf-ruby@w3.org'

  spec.platform           = Gem::Platform::RUBY
  spec.files              = %w(AUTHORS README.md UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  spec.require_paths      = %w(lib)

  spec.required_ruby_version      = '>= 2.6'
  spec.add_runtime_dependency     'rdf',             '~> 3.2'
  spec.add_runtime_dependency     'spira',           '~> 3.2'
  spec.add_development_dependency 'yard' ,           '~> 0.9'
  spec.add_development_dependency 'rspec',           '~> 3.10'
  spec.add_development_dependency 'rdf-spec',        '~> 3.2'
  spec.post_install_message       = nil
end