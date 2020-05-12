require 'pry'
class Writer
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

  def add_movie(movie)
    movie.writer = self unless movie.writer
    movies << movie unless movies.include?(movie)

  end

  end
