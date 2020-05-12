class Producer
  attr_accessor :name, :movies
  @@all =[]

  def initialize(name)
    @name = name
    @movies =[]
    @@all << self
  end

  def self.all
    @@all
  end

  def add_movie(movie)
    movie.producer = self unless movie.producer
    movies << movie unless movies.include?(movie)
    
  end
end
