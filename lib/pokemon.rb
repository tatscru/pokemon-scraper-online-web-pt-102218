class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  def initialize (args)
    @@all << self 
  end 
  
  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 
  
  def self.find 
    pokemon = database.execute 
  end 
end
