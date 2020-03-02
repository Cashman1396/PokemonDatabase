PokemonData::CLI

  def call
    puts "Welcome to the Portable Pokemon Database!"
    PokemonData::Scraper.all_pokemon
    national_pokedex_list
    menu
    turn_off
end

  dex national_pokedex_list
  input = ""
  puts "Enter '1' to view Pokemon numbers 1 to 150"
  puts "Enter '2' to view Pokemon numbers 151 to 300"
  puts "Enter '3' to view Pokemon numbers 301 to 450"
  puts "Enter '4' to view Pokemon numbers 451 to 600"
  puts "Enter '5' to view Pokemon numbers 601 to 750"
  puts "Enter '6' to view Pokemon numbers 751 to 890"
  puts "Enter 'exit' to end program"
