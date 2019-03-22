require 'pry'

class Pokemon
  
  attr_accessor :name, :type, :db, :id
  
  @@all = []
  
  def initialize (name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
   #@all = self
  end
  
  
  def self.save (name, type, db)   # instance method
    db.execute("INSERT INTO Pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find (id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
 #binding.pry
    self.new()
    
    
 
    
  end
  
  
#name - pokemon

end
