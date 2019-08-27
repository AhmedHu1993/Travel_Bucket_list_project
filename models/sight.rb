require_relative( '../db/sql_runner' )

class Sight

  attr_reader :id, :name, :city_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @city_id = options['city_id']
  end

  def save()
    sql = "INSERT INTO sights (name, city_id)
      VALUES ($1, $2) RETURNING id"
    values = [@name, @city_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM sights"
    results = SqlRunner.run( sql )
    return results.map { |hash| Sight.new( hash ) }
  end

  def self.delete_all()
    sql = "DELETE FROM sights"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM sights
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

end
