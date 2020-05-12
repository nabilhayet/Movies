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

      puts "6. To quit, type 'exit'"
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

            end
      end
 end


    def list_movies
      Movies.all.each_with_index do |item,index|
        puts " #{index+1} #{item.movie_name}"
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

end
