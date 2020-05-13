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

      puts "7. To list all of the movies of a producer, enter 'list movies by producer'."
      puts "----------------------------------------------------------------------------"

      puts "8. To list all of the movies of a writer, enter 'list movies by writer'."
      puts "----------------------------------------------------------------------------"

      puts "9. To list details of the movie, enter 'list movie details'."
      puts "----------------------------------------------------------------------------"

      puts "10. To quit, type 'exit'"
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
            when "list movie details"
              movie_details
            when "list movies by producer"
              list_movies_by_Producer
            when "list movies by writer"
              list_movies_by_Writer
            end
      end
 end


    def list_movies
      puts   " |Movie_Name| "
      Movies.all.each_with_index do |item,index|
        puts "#{index+1} |#{item.movie_name}|"
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
      else
        puts "No such name exists"
      end
  end

  def list_movies_by_Producer
    puts 'Please enter the name of an producer:'
    input =gets.strip

      if produce = Producer.find_by_name(input)
          produce.movies.sort{|a,b| a.name<=>b.name}.each.with_index(1) do |movie,idx|
          puts "#{idx}. #{movie.movie_name} - #{movie.cast}"
          puts "Thank You"
          end
      else
        puts "No such name exists"
      end
  end

  def list_movies_by_Writer
    puts 'Please enter the name of an writer:'
    input =gets.strip

      if write = Writer.find_by_name(input)
          write.movies.sort{|a,b| a.name<=>b.name}.each.with_index(1) do |movie,idx|
          puts "#{idx}. #{movie.movie_name} - #{movie.cast}"
          puts "Thank You"
          end
      else
        puts "No such name exists"
      end
  end





    def movie_details
    puts 'Which movie details would you like to see?'
    input = gets.strip.to_i
      if(1..Movies.all.length).include?(input)
      movie = Movies.all.sort{|a,b| a.movie_name<=>b.movie_name}[input -1]
        if movie
          puts "||Movie_Name||  |--------|Cast|---------|                 |Release_year||  ||Director||           ||Producer||           ||Writer||"
          puts "Showing #{movie.movie_name}  #{movie.cast}  #{movie.year} #{movie.director.name}  #{movie.producer.name} #{movie.writer.name}"
        else
          puts "This movie list doesn't exist. Try another one!"
        end
      end
    end


end
