class PokemonDatabase::Pokemon
  attr_accessor :name, :number, :types, :info, :weaknesses, :abilities
  @@all = []


  def self.all
    @@all
  end

end
