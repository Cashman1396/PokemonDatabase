class PokemonDatabase::CLI

    def call
      puts "Welcome to the Portable Pokemon Database!"
      PokemonDatabase::Scraper.get_all_pokemon
      national_pokedex_list
      menu
      turn_off
    end

    def national_pokedex_list
      input = ""
      puts "Enter '1' to view Pokemon numbers 1 to 150"
      puts "Enter '2' to view Pokemon numbers 151 to 300"
      puts "Enter '3' to view Pokemon numbers 301 to 450"
      puts "Enter '4' to view Pokemon numbers 451 to 600"
      puts "Enter '5' to view Pokemon numbers 601 to 750"
      puts "Enter '6' to view Pokemon numbers 751 to 890"
      puts "Enter 'exit' to end program"
      input = ""
      if input == "1"
        national_pokedex_list(0)
      elsif input == "2"
        national_pokedex_list(151)
      elsif input == "3"
        national_pokedex_list(301)
      elsif input == "4"
        national_pokedex_list(451)
      elsif input == "5"
        national_pokedex_list(601)
      elsif input == "6"
        national_pokedex_list(751)
      elsif input == "exit"
        turn_off
        exit
      else
        puts "Who's that Pokemon!!"
        national_pokedex_list
      end
    end

  def national_pokedex_list(first)
    last = first + 149
    if PokemonDatabase::Pokemon.all_pokemon[last+1..-1].count < 150
      last = -1
    end
    all_national = PokemonDatabase::Pokedex.all_national[first..last]
    all_national.each do |pokemon|
      puts "#{pokemon.number}. #{pokemon.name}"
    end
  end

  def menu
    input = ""
    @all_national = PokemonDatabase::Pokedex
    while input != 'exit'
      puts "Please enter a Pokemon number to learn about that Pokemon or type 'menu' to return to the Main Menu"
      input = gets.downcase.strip

      if input.to_i > 0 && input.to_i <= PokemonDatabase::Pokedex.all_national.count
        pokemon = @all_national[input.to_i - 1]
        PokemonDatabase::Scraper.get_attributes(pokemon) if pokemon.info == nil
        puts pokemon.info
        puts "Name: #{pokemon.name}"
        puts "Number #{pokemon.number}"
        puts "Type: #{pokemon.type}"
        puts "Species: #{pokemon.species}"
        puts "Height: #{pokemon.height}"
        puts "Weight: #{pokemon.weight}"
        puts "Ability: #{pokemon.abilities}"
        #returns all pokemon information
      elsif input == "menu"
        national_pokedex_list
      elsif input == "exit"
      else
        puts "Please Try Again"
      end
    end
  end

  def turn_off
    puts "The Portable Pokemon Database will now turn off, See ya Later!"
  end
