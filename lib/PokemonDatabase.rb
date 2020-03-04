require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './PokemonDatabase/PokeData'
require_relative './PokemonDatabase/version'
require_relative './PokemonDatabase/cli'
require_relative './PokemonDatabase/scraper'


module PokemonDatabase
  class Error < StandardError; end
  # Your code goes here...
end
