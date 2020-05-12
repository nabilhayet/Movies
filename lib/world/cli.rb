class Cli
  def run
    Scrapper.get_movie


   input = ""

  while input!='exit'
    puts "----------------------------------------------------------------------------"
    puts "1. Welcome to our movie wolrd"
    puts "----------------------------------------------------------------------------"

    puts "2. To find the list of all the movies, enter 'list movies'"
    puts "----------------------------------------------------------------------------"

    puts "3. To list all of the director in your movie world, enter 'list director'."
    puts "----------------------------------------------------------------------------"

    puts "4. To list all of the genres in your library, enter 'list genres'."
    puts "----------------------------------------------------------------------------"

    puts "5. To quit, type 'exit'"
    puts "----------------------------------------------------------------------------"

    input = gets.strip.downcase

   case input
          when "list movies"
            list_movies
         when "list director"
          list_director
         when "list genres"
            list_genres
          end
       input = gets.strip.downcase
    end
end

  # def list_movies
  #    m_name = Movies.all.select{|movie| movie.movie_name}
  #    binding.pry
  #    puts "#{m_name}"
  #  end

 end

 def list_director
    Director.all.uniq.each do |direct|
    puts direct.name
    end

end
  #
  # def list_producer
  #   Producer.all.select{|produce| produce.name}
  # end

  # def list_writer
  #   Writer.all.select{|writer| writer.name}
  # end
