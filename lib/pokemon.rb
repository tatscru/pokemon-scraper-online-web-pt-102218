class Pokemon
  attr_accessor :id, :name, :type, :db
  
  # def initialize(args)
  #   @id = id
  #   @name = name
  #   @type = type
  #   @db = db
  # end
  
   def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 
  
  # def self.find(id, db)
  #   pokemon_fing = db.execute("SELECT * FROM pokemon WHERE id=?", id).flatten
  #   Pokemon.new(
  #     pokemon_find id: [0], 
  #     name: [1], 
  #     type: [2], 
  #     db: db)
  # end
  
  def self.find(id, db)
    info = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id: info[0], name: info[1], type: info[2], db: db)
  end

end
