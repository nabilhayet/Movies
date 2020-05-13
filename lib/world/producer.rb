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

  def self.find_by_name(p_name)
    produce = @@all.find{|producer| producer.name==p_name}
  end



  def add_movie(movie)
    movie.producer = self unless movie.producer
    movies << movie unless movies.include?(movie)

  end
end
