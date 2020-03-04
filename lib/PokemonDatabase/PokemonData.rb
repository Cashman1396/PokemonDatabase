class PokemonDatabase::Pokedex

 attr_accessor :name, :number, :type, :abilities, :height, :weight, :weakness, :species

 @@all_national = []

  def self.all_national
    @@all_national
  end

end
