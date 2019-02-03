class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize (args)
  
  end 
  
  def self.save (name, type, db)
    db.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
  end 
end
