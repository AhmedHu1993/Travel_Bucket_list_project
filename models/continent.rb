require_relative( '../db/sql_runner' )

class Continent

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO continents (name) VALUES ($1) RETURNING id"
    values = [@name]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM continents ORDER BY name"
    results = SqlRunner.run( sql )
    return results.map { |hash| Continent.new( hash ) }
  end

  def self.find_by_name( name )
    sql = "SELECT * FROM continents
    WHERE name = $1"
    values = [name]
    results = SqlRunner.run( sql, values )
    return Continent.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM continents"
    SqlRunner.run( sql )
  end

  def countries()
    sql = "SELECT * FROM countries WHERE continent_id = $1 ORDER BY continent_id"
    values = [@id]
    results = SqlRunner.run( sql, values )
    return results.map { |hash| Country.new( hash ) }
  end

  def cities
    sql = "SELECT cities.* FROM cities INNER JOIN countries ON
    countries.id = cities.country_id WHERE continent_id = $1 ORDER BY country_id"
    values = [@id]
    results = SqlRunner.run( sql, values )
    return results.map { |hash| City.new( hash ) }
  end

end
