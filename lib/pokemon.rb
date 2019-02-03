class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize (args)
    @@all << self 
  end 
  
  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 
  
  # def self.find (id, db)
  #     # db.execute("SELECT * FROM pokemon WHERE id =?", id).flatten
  #     # Pokemon.new {
  #     #   id: [0],
  #     #   name: [1],
  #     #   type: [2]
  #     # }
   
  #   pokemon_find = db.execute("SELECT * FROM pokemon WHERE id=?",id).flatten
    
  #   Pokemon.new(id: pokemon_find[0], name: pokemon_find[1], type: pokemon_find[2], db: db )
  # end 
  
    def self.find(id_number, db)
    pokemon_find = db.execute("SELECT * FROM pokemon WHERE id=?", id_number).first
    Pokemon.new(id: pokemon_find[0], name: pokemon_find[1], type: pokemon_find[2], hp: pokemon_find[3], db: db )
  end

end
