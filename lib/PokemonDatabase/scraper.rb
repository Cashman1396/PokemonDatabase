class PokemonDatabase::Scraper

  def self.get_all_pokemon
    doc = Nokogiri::HTML(open("https://pokemondb.net/pokedex/all"))
    #scrapes the pokemon database website of all 890 pokemon
  end

  def self.create_pokemon
    #receives the information from the website
    get_all_pokemon.css("tr").drop(1).each do |x|
      if PokemonDatabase::Pokedex.all_national.find {|a| a.name == name } == nil
        pokemon = PokemonDatabase::Pokedex.new
        pokemon.number = x.css("span.infocard-cell-data").text
        pokemon.name = name
        PokemonDatabase::Pokedex.all_national << pokemon
      end
    end
  end

  def self.get_attributes(pokemon)
    #scrapes the name, number, height, weight, and type from the info card of the searched 'mon'
    doc = Nokogiri::HTML(open("https://pokemondb.net/pokedex/#{pokemon.name}"))
    pokemon.info = doc.search('p')[0].text
    pokemon.species = doc.search('tr td')[2].text
    pokemon.height = doc.search('tr td')[3].text
    pokemon.weight = doc.search('tr td')[4].text
    pokemon.type = doc.search('tr td a')[0].text
    pokemon.type += "/#{doc.search('tr td a')[1].text}" if doc.search('tr td a')[1] == "Fire" || doc.search('tr td a')[1].text == "Poison" || doc.search('tr td a')[1].text == "Water" || doc.search('tr td a')[1].text == "Grass" ||

  end
