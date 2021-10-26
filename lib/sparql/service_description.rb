require 'rdf'
require 'rdf/vocab'
require 'spira'

module SPARQL
  ##
  # SPARQL Service Description, including one or more SPARQL datasets
  #
  # @see http://www.w3.org/TR/sparql11-service-description/
  # @see http://semanticweb.org/wiki/VoiD
  # @see http://www.w3.org/TR/void/
  # @see http://vocab.deri.ie/void
  class ServiceDescription < Spira::Base
    autoload :CACHE,    'rdf/service_description/vocab'
    autoload :SD,       'rdf/service_description/vocab'
    autoload :VERSION,  'rdf/service_description/version'

    type RDF::Vocab::SD.Service
    property :url,              predicate: SD.url
    has_many :datasets,         predicate: SD.datasetDescription, type: SD.Dataset

    ##
    # Retrieve the Service Description from within queryable
    def self.get(queryable)
      Spira.add_repository(default: queryable)
      ServiceDescription.each.to_a.first
    end
    
    ##
    # Spira representation of Service Description Dataset
    # representing one or more default- and named-graphs.
    #
    # A Dataset URI should match the service location
    class Dataset < Spira::Base
      type SD.Dataset
      property :title,          predicate: DC.title
      property :description,    predicate: DC.description
      property :default_graph,  predicate: SD.defaultGraph, type: SD.Graph
      has_many :named_graphs,   predicate: SD.namedGraph,   type: SD.Graph
      
      ##
      # Find a graph having the specified source
      # @param [RDF::URI] source
      # @param [RDF::URI] name (nil)
      # @return [RDF::Graph]
      def find(source, name = nil)
        if name
          named_graphs.detect {|g| g.source == source && g.name == name}
        else
          default_graphs.detect {|g| g.source == source}
      end
      
      ##
      # Create a new graph, if it has a context, add it to named_graphs, default_graphs otherwise
      # @param [RDF::URI] source
      # @param [RDF::URI] name (nil)
      # @return [RDF::Graph]
      def new_graph(source, name = nil)
        g = RDF::Node.new.as(Graph)
        g.source = source
        g.name = name
        g.save!
        (name ? named_graphs : default_graphs) << g
        g
      end
    end
    
    class Graph < Dataset
      type SD.Graph
      property :name,           predicate: SD.name
      property :source,         predicate: DC.source
      property :date,           predicate: DC.date
      property :modified,       predicate: DC.modified
      property :max_age,        predicate: CACHE.maxAge
      property :expires,        predicate: CACHE.expires
      property :etag,           predicate: CACHE.etag
      
      ##
      # Return a stream for the graph unless caching indicates that it is not required.
      #
      # @return [IO]
      #   Return stream (or nil), with a #content_type method attached indicating the mime-type of the result
      def read
      end
      
      # Is cached content fresh?
      # @return [Boolean]
      def fresh?
      end
    end
  end
end
