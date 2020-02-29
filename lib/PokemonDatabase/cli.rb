class PokemonDatabase::CLI

  def start
    puts "Hello, welcome to the Pokemon Database"
    PokemonData::Scraper.create_all
    list_pokemon
    menu
    turn_off
  end
end
