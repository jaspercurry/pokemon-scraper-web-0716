class Pokemon

  attr_accessor :id, :name, :type, :db
  def initialize(id = nil, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    db.execute("SELECT id, name, type FROM pokemon WHERE id = (?)", id)
  end

  def alter_hp(hp)
    db.execute("UPDATE pokemon SET hp = ? WHERE name = (?)", hp, self.name)
  end


end
