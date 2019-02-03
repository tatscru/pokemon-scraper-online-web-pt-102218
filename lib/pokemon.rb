class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize (args)
    @@all << self 
  end 
  
  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 
  
  def self.find(id, db)
    db.execute("SELECT * FROM pokemon WHERE id=?").flatten
    Pokemon.new(
      id: [0], 
      name: [1], 
      type: [2], 
      db: db)
  end

end
