require_relative( '../db/sql_runner' )

class City

  attr_accessor :name, :has_visited
  attr_reader :id, :country_id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @has_visited = options["has_visited"]
    @country_id = options["country_id"].to_i
  end

##CREATE

  def save
    sql = "INSERT INTO cities
          (name, has_visited, country_id)
           VALUES
          ($1, $2, $3)
           RETURNING id"
    values = [@name, @has_visited, @country_id]
    result = SqlRunner.run(sql, values)
    @id = result.first["id"].to_i
  end

##READ

  def self.all
    sql = "SELECT * FROM cities"
    result = SqlRunner.run(sql)
    return result.map {|city| City.new(city)}
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM cities
           WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    return City.new(result.first)
  end

##UPDATE

def update
  sql = "UPDATE cities
         SET
        (name, has_visited, country_id)
         =
        ($1, $2, $3)
         WHERE id = $4"
  values = [@name, @has_visited, @country_id, @id]
  SqlRunner.run(sql, values)
end

##DELETE

  def self.delete_by_id(id)
    sql = "DELETE FROM cities
           WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = "DELETE FROM cities"
    SqlRunner.run(sql)
  end

end
