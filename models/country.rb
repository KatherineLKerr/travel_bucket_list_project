require_relative( '../db/sql_runner' )

class Country

  attr_accessor :name, :has_visited
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @has_visited = options["has_visited"]
  end

#CREATE
  def save
    sql = "INSERT INTO countries
          (name, has_visited)
           VALUES
          ($1, $2)
           RETURNING id"
    values = [@name, @has_visited]
    result = SqlRunner.run(sql, values)
    @id = result.first()["id"].to_i
  end

#READ

  def self.all
    sql = "SELECT * FROM countries"
    results = SqlRunner.run(sql)
    return results.map {|country| Country.new(country)}
  end

#UPDATE

#DELETE

  def self.delete_by_id(id)
    sql = "DELETE FROM countries
           WHERE id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = "DELETE FROM countries"
    SqlRunner.run(sql)
  end

end
