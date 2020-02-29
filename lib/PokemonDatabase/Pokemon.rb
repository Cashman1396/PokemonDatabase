class PokemonDatabase::Pokemon
  attr_accessor :name, :number, :types, :info_link_name, :weaknesses, :abilities
  @@all = []

  def initialize(name, types)
    @number = @@all.size + 1
    self.check_edges_cases(name)
    @types = types

    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.create_from_pokemondb
    #PokemonDatabase::Scraper.scrape_from_pokemondb
  end

  def self.search_by_name(pokemon)
    self.all.find {|i| i.name.downcase == pokemon.downcase}
    # => returns pokemon obj with name
  end

  def check_edges_cases(name)
    if @number == 29
      @name = "Nidoran-female"
      @info_link_name = @name 
