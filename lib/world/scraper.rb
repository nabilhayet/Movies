require 'open-uri'
require 'nokogiri'
require 'pry'

class Scrapper

def self.get_movie
  html = open("https://www.afi.com/afis-100-years-100-movies/")
  doc = Nokogiri::HTML(html)
  post= doc.css("div .movie_popup")

    name = []
    year=[]
    cast =[]
    director =[]
    producer =[]
    writer=[]


    post.search("h6").take(20).each do |m_name|
    name << m_name.text.split(/[.,(]/)[1].strip
    year << m_name.text.split(/[(,)]/)[1].strip
  end

    post.search("p.Cast").take(20).each do |cast_|
    cast << cast_.text.split("Cast:")[1].strip
  end


    post.search("p.Directors").take(20).each do |direct|
    director << direct.text.split("Directors:")[1].strip
  end

    post.search("p.Producer").take(20).each do |produce|
    producer << produce.text.split("Producer:")[1].strip
  end

    post.search("p.Writer").take(20).each do |write|
    writer << write.text.split("Writer:")[1].strip
  end


  director.each_with_index do |item,index|

    direct = Director.find_by_name(item)
      if direct
       direct
     else
          direct = Director.new(item)
      end

    produce = Producer.find_by_name(producer[index])
      if produce
          produce
      else
          produce = Producer.new(producer[index])
      end

    write = Writer.find_by_name(writer[index])
      if write
          write
      else
        write= Writer.new(writer[index])
      end

    yr = year[index]
    cast_ = cast[index]
    m_name = name[index]
    m = Movies.find_by_name(m_name)
    if m
      m
    else
      movie=Movies.new(m_name,yr,cast_,direct,produce,write)
      direct.add_movie(movie)
      produce.add_movie(movie)
      write.add_movie(movie)
  end
end

  # director.each do |a|
  #  direct= Director.new(a)
  #
  #   producer.each do |b|
  #     produce = Producer.new(b)
  #
  #       writer.each do |c|
  #        write = Writer.new(c)
  #
  #           year.each do |d|
  #             cast.each do |e|
  #               name.each do |f|
  #                 movie = Movies.find_by_name(f)
  #
  #                   if movie
  #                       movie
  #
  #                   else
  #                     movie = Movies.new(f,d,e,direct,produce,write)
  #
  #                   end
  #                 end
  #               end
  #             end
  #           end
  #         end
  #       end
end
end
