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

  def self.find_by_name(w_name)
    write = @@all.find{|writer| writer.name==w_name}
  end


  def add_movie(movie)
    movie.writer = self unless movie.writer
    movies << movie unless movies.include?(movie)

  end

  end
