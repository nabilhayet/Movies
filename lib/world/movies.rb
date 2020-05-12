class Movies
  attr_accessor :movie_name, :year,:cast,:director, :producer, :writer
  @@all =[]

  def initialize(name,year,cast,director,producer,writer)
    @movie_name = name
    @year =year
    @cast = cast
    self.director=director if director
    self.producer=producer if producer
    self.writer=writer if writer
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(m_name)
    movie = @@all.find{|movie| movie.movie_name==m_name}
  end

  def director=(director)
    @director = director
    director.add_movie(self)
  end

  def producer=(producer)
    @producer = producer
    producer.add_movie(self)
  end

  def writer=(writer)
    @writer = writer
    writer.add_movie(self)
  end


end
