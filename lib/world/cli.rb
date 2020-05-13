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

      puts "4. To list all of the producer in your library, enter 'list producer'."
      puts "----------------------------------------------------------------------------"

      puts "5. To list all of the writer in your library, enter 'list writer'."
      puts "----------------------------------------------------------------------------"

      puts "6. To list all of the movies of a director, enter 'list movies by director'."
      puts "----------------------------------------------------------------------------"

      puts "7. To quit, type 'exit'"
      puts "----------------------------------------------------------------------------"

      input = gets.strip.downcase

      case input
            when "list movies"
              list_movies
            when "list director"
            list_director
            when "list producer"
              list_producer
            when "list writer"
              list_writer
            when "list movies by director"
              list_movies_by_director

            end
      end
 end


    def list_movies
      puts   "  |Movie_Name|  |---------------|Cast|--------------------------|     ||Year||    ||Director||  ||Producer||   ||Writer|| "
      Movies.all.each_with_index do |item,index|
        puts " #{index+1} |#{item.movie_name}|  |#{item.cast}|  |#{item.year}|  |#{item.director.name}|  |#{item.producer.name}| |#{item.writer.name}|"
      end
    end


    def list_director
      Director.all.each_with_index do |item,index|
        puts " #{index+1} #{item.name}"
      end
    end

    def list_producer
      Producer.all.each_with_index do |item,index|
        puts " #{index+1} #{item.name}"
      end
    end

   def list_writer
      Writer.all.each_with_index do |item,index|
       puts " #{index+1} #{item.name}"
      end
  end

  def list_movies_by_director
  puts 'Please enter the name of an director:'
  input =gets.strip

  if direct = Director.find_by_name(input)
    direct.movies.sort{|a,b| a.name<=>b.name}.each.with_index(1) do |movie,idx|
      puts "#{idx}. #{movie.movie_name} - #{movie.cast}"
      puts "Thank You"
    end
  end
end

end
