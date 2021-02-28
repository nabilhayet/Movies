![GitHub Repo stars](https://img.shields.io/github/stars/nabilhayet/Restaurant) ![GitHub forks](https://img.shields.io/github/forks/nabilhayet/Restaurant) ![GitHub followers](https://img.shields.io/github/followers/nabilhayet) ![Bitbucket open issues](https://img.shields.io/bitbucket/issues/nabilhayet/Restaurant)                                          
                                        <h1>:bomb: Movie World :bomb: </h1>
                                                      
This project takes info from a movie website and displays the details of the selected movies. This project was created to capture all the important data related to a website and show it to the user in the terminal. This will help the user to find any info by typing the name instead of looking at the big lists or searching throughout the entire project.

<a href="https://www.youtube.com/watch?v=UWaRqHpO8fU&t=2s">Demo</a>

Table of Contents
- [Features](#features)
- [Tech-Stack](#tech-stack)
- [Installing](#installing)
- [Challenges](#challenges)
- [Future-Implementation](#future-implementation)
- [Code-Snippet](#code-snippet)
- [Tests](#tests)
                               
## Features
<ul>
  <li>Display lists of all the movies of a website.</li>
  <li>Display lists of all the producers.</li>
  <li>Display lists of all the directors.</li>
  <li>Display lists of all the writers.</li>
  <li>Display details of the movie for a particular director.</li>
  <li>Display details of the movie for a particular producer.</li>
  <li>Display details of the movie for a particular writer.</li>
  <li>Display details of the movie by selecting a name.</li>
  <li>Display the name of the movie for a particular year.</li>
  <li>Display the name of the movie for a particular cast member.</li>
</ul>

## Signup 

![dem](https://user-images.githubusercontent.com/33500404/109376302-97f5ee00-7891-11eb-89aa-6fdfd054c8c9.gif)


## Tech-Stack
<p>This web app makes use of the following:</p>

* pry
* nokogiri 

## Installing
<ul>
   <li> Clone this repo to your local machine git clone <this-repo-url></li>
   <li> run 'ruby ./bin/movies' to run the application</li>
</ul>
        
## Challenges
<ul>
  <li> Scrapping was the most difficult task of this project</li>
  <li> After fething data from the website, filtering out perticular info was also challenging</li>
  <li> Loading so much data took a lot of time to run the application</li>
</ul>

## Future-Implementation
<ul>
  <li> Add more classes like Editor</li>
  <li> Remove duplicacy of code</li>
</ul>

## Code-Snippet 

```
html = open("https://www.afi.com/afis-100-years-100-movies/")
 doc = Nokogiri::HTML(html)
 post= doc.css("div .movie_popup")
```

```
Open uri takes a link of a site and opens it by storing the url in a variable. Nokogiri takes the varaible and turns it into a html file. The file can be accessed
by using a css command providing a attribute name.
```
## Tests
* To find the list of all the movies, enter 'list movies'"
* To list all of the director in your movie world, enter 'list director'."
* To list all of the producer in your library, enter 'list producer'."
* To list all of the writer in your library, enter 'list writer'."
* To list all of the movies of a director, enter 'list movies by director'."
* To list all of the movies of a producer, enter 'list movies by producer'."
* To list all of the movies of a writer, enter 'list movies by writer'."
* To list details of the movie, enter 'list movie details'."
* To find a movie by a given year, enter 'movie year'."
* To find a movie by a given cast member, enter 'cast member'."


