class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize (args)
    @@all << self 
  end 
  
  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 
  
  def self.find (num, db)
    # pokemon_find = db.execute("SELECT * FROM pokemon WHERE id =?", id_number).first
    # Pokemon.new(
    #   id: pokemon_find[0],
    #   name: pokemon_find[1],
    #   type: pokemon_find[2],
    #   db: db)
    
     pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    new_pokemon = self.new(pokemon)
    id: = pokemon[0][0]
    name: = pokemon[0][1]
    type: = pokemon[0][2]
    return new_pokemon
  end 
end
