require "open-uri"
require "nokogiri"
require "pry"


require_relative "./PokemonDatabase/version"
require_relative "./PokemonDatabase/PokemonData"
require_relative "./PokemonDatabase/scraper"
require_relative "./PokemonDatabase/cli"

module PokemonDatabase
  class Error < StandardError; end
  # Your code goes here...
end
