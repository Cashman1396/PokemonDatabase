class PokemonDatabase::Pokedex

 attr_accessor :name, :number, :info, :type, :abilities, :height, :weight, :weakness, :species, :count

 @@all_national = []

  def self.all_national
    @@all_national
  end

end
