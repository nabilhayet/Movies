class Director
  attr_accessor :name, :movies
  @@all =[]

  def initialize(name)
    @name = name
    @movies=[]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(d_name)
    direct = @@all.find{|director| director.name==d_name}
  end

  def add_movie(movie)
    movie.director = self unless movie.director
    movies << movie unless movies.include?(movie)
  end
end
