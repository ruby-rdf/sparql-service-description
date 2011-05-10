SPARQL for RDF.rb
==================================

This gem allows easy publication of a [SPARQL Service Description][SSD] for services using the [Ruby][] [SPARQL 1.0][] solution.

Features
--------

* 100% free and unencumbered [public domain](http://unlicense.org/) software.
* Generate/access Service Description using Ruby object semantics.
* Publish Service Description using any supported RDF serialization.
* Useful for managing local datasets to describe SPARQL access points.

Dependencies
------------

* [Ruby](http://ruby-lang.org/) (>= 1.8.7) or (>= 1.8.1 with [Backports][])
* [RDF.rb](http://rubygems.org/gems/rdf) (>= 0.4.0)
* [Spira](http://rubygems.org/gems/spira) (>= 0.0.12)

Installation
------------

The recommended installation method is via [RubyGems](http://rubygems.org/).
To install the latest official release of the `SPARQL` gem, do:

    % [sudo] gem install sparql-service-description

Download
--------

To get a local working copy of the development repository, do:

    % git clone git://github.com/gkellogg/sparql-service-description.git

Mailing List
------------

* <http://lists.w3.org/Archives/Public/public-rdf-ruby/>

Author
------

* [Gregg Kellogg](http://github.com/gkellogg) - <http://kellogg-assoc.com/>


Contributing
------------

* Do your best to adhere to the existing coding conventions and idioms.
* Don't use hard tabs, and don't leave trailing whitespace on any line.
* Do document every method you add using [YARD][] annotations. Read the
  [tutorial][YARD-GS] or just look at the existing code for examples.
* Don't touch the `.gemspec`, `VERSION` or `AUTHORS` files. If you need to
  change them, do so on your private branch only.
* Do feel free to add yourself to the `CREDITS` file and the corresponding
  list in the the `README`. Alphabetical order applies.
* Do note that in order for us to merge any non-trivial changes (as a rule
  of thumb, additions larger than about 15 lines of code), we need an
  explicit [public domain dedication][PDD] on record from you.

License
-------

This is free and unencumbered public domain software. For more information,
see <http://unlicense.org/> or the accompanying {file:UNLICENSE} file.

[Ruby]:             http://ruby-lang.org/
[RDF]:              http://www.w3.org/RDF/
[YARD]:             http://yardoc.org/
[YARD-GS]:          http://rubydoc.info/docs/yard/file/docs/GettingStarted.md
[PDD]:              http://lists.w3.org/Archives/Public/public-rdf-ruby/2010May/0013.html
[SPARQL]:           http://en.wikipedia.org/wiki/SPARQL
[SPARQL 1.0]:       http://www.w3.org/TR/rdf-sparql-query/
[SPARQL 1.1]:       http://www.w3.org/TR/sparql11-query/
[SSD]:              http://www.w3.org/TR/sparql11-service-description/
