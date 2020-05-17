1.Project title
The name of this project is Movie World. This project takes info from a movie website and
displays the details of the selected movies.

2.Motivation
This project was created to capture all the important data related to a website and
show it to the user in the terminal. This will help the user to find any info by typing the name
instead of looking at the big lists or searching throughout the entire project.

3.Tech/framework used
Built with
  --Ruby

4. Features
-- Display lists of all the movies of a website.
-- Display lists of all the producers.
-- Display lists of all the directors.
-- Display lists of all the writers.
-- Display details of the movie for a particular director.
-- Display details of the movie for a particular producer.
-- Display details of the movie for a particular writer.
-- Display details of the movie by selecting a name.
-- Display the name of the movie for a particular year.
-- Display the name of the movie for a particular cast member.

5. Code Example
  For this project, open uri && nokogiri library were used.

  Code Snippet
  html = open("https://www.afi.com/afis-100-years-100-movies/")
  doc = Nokogiri::HTML(html)
  post= doc.css("div .movie_popup")

  Open uri takes a link of a site and opens it by storing the url in a variable.
  nokogiri takes the varaible and turns it into a html file. The file can be accessed
  by using a css command providing a attribute name.

6. Installation
-- git clone https://github.com/nabilhayet/Movies.git


7. Reference
-- http://ruby.bastardsbook.com/chapters/html-parsing/

8. Tests
-- Type 'ruby ./bin/movies'
-- To find the list of all the movies, enter 'list movies'"
--To list all of the director in your movie world, enter 'list director'."
--To list all of the producer in your library, enter 'list producer'."
--To list all of the writer in your library, enter 'list writer'."
--To list all of the movies of a director, enter 'list movies by director'."
--To list all of the movies of a producer, enter 'list movies by producer'."
--To list all of the movies of a writer, enter 'list movies by writer'."
--To list details of the movie, enter 'list movie details'."
--To find a movie by a given year, enter 'movie year'."
--To find a movie by a given cast member, enter 'cast member'."

9. Credits
-- https://github.com/nabilhayet/ruby-music-library-cli-onl01-seng-pt-032320
