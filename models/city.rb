require_relative( '../db/sql_runner' )

class City

  attr_reader :id
  attr_accessor :name, :country_id, :visited

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @country_id = options['country_id'].to_i
    @visited = options['visited']
  end

  def save()
    sql = "INSERT INTO cities (name, country_id, visited)
      VALUES ($1, $2, $3) RETURNING id"
    values = [@name, @country_id, @visited]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM cities"
    results = SqlRunner.run( sql )
    return results.map { |hash| City.new( hash ) }
  end

  def self.delete_all()
    sql = "DELETE FROM cities"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM cities
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def update()
    sql = "UPDATE countries
    SET (name, country_id, visited) = ($1, $2, $3)
    WHERE id = $4"
    values = [@name, @country_id, @visited, @id]
    SqlRunner.run(sql, values)
  end

  def self.visited()
    sql = "SELECT * FROM cities WHERE visited = $1"
    values = [true]
    results = SqlRunner.run( sql, values )
    return results.map { |hash| City.new( hash ) }
  end

  def self.to_visit()
    sql = "SELECT * FROM cities WHERE visited = $1"
    values = [false]
    results = SqlRunner.run( sql, values )
    return results.map { |hash| City.new( hash ) }
  end

  def country()
    sql = "SELECT * FROM countries WHERE id = $1"
    values = [@country_id]
    results = SqlRunner.run( sql, values )
    return Country.new( results.first )
  end

  def status
    if @visited == "t"
      return "Visited"
    else
      return "To Be Visited"
    end

  end

end
