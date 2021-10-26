source "https://rubygems.org"

gemspec

group :develop do
  gem "rdf-spec",       git: "https://github.com/ruby-rdf/rdf-spec",        branch: "develop"
  gem "rdf-turtle",     git: "https://github.com/ruby-rdf/rdf-turtle",      branch: "develop"
  gem "rdf-vocab",      git: "https://github.com/ruby-rdf/rdf-vocab",       branch: "develop"
end

group :debug do
  gem "byebug", platforms: :mri
end

group :test do
  gem 'simplecov', '~> 0.21',  platforms: :mri
  gem 'simplecov-lcov', '~> 0.8',  platforms: :mri
end
