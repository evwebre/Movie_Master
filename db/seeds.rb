# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Response.destroy_all
Answer.destroy_all
Question.destroy_all
Movie.destroy_all
Lens.destroy_all
User.destroy_all
Level.destroy_all
puts "Seeding database..."

def seed_levels
  puts "Creating Five Levels!"
  5.times do |n|
    Level.create(number: n + 1)
  end
end

def seed_users
  puts "Creating Three Users!"
  User.create(email: "steven@spielberg.com", first_name: "Steven", last_name: "Spielberg", password: "123456", level: Level.second)
  User.create(email: "george@lucas.com", first_name: "George", last_name: "Lucas", password: "123456", level: Level.first)
  User.create(email: "ryan@coogler.com", first_name: "Ryan", last_name: "Coogler", password: "123456", level: Level.first)
end

def seed_lenses
  puts "Creating Five Lenses!"
  Lens.create(level: Level.first, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: "A man vs. self conflict will occur when a character is struggling with themselves on the inside. This type of conflict can occur with other conflicts as well. Anytime a character struggles with a moral dilemma or decision we see this at work." , image: "https://source.unsplash.com/user/erondu/1600x900", title: "Man vs. Self")
  Lens.create(level: Level.second, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: "The Hero's Journey operates as a circular story structure, meaning that the hero's physical journey will end where it began, though their internal journey as a character will leave them forever changed.<p>This physical journey, in particular, will take your hero from a known world into an unknown one, often introducing them to new powers or skills or encouraging them to utilize known abilities like never before.<p>With these two functions of The Hero's Journey in mind, it's easy to see how one of the core themes of any Hero's Journey story is transformation. Rarely do such stories feature a flat character arc, in which the protagonist fights to stay true to their beliefs rather than undergoing change as a result of new experiences.", image: "https://source.unsplash.com/user/erondu/1600x900", title: "The Hero's Journey")
  Lens.create(level: Level.third, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: "In this type of conflict, a character is tormented by natural forces such as storms or animals. This is also an external conflict. Ernest Hemingway’s The Old Man and the Sea and Moby Dick by Herman Melville are examples of this type of conflict." , image: "https://source.unsplash.com/user/erondu/1600x900", title: "Man vs. Nature")
  Lens.create(level: Level.fourth, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: "Films are a very visual experience; what a film finally looks like on the screen can have a huge impact. And with this in mind, many films use color -- or an absence of color -- as part of their story-telling craft.", image: "https://source.unsplash.com/user/erondu/1600x900", title: "The Power of Color")
  Lens.create(level: Level.fifth, video: "https://www.youtube.com/watch?v=fZ28gGCa_jI", description: Faker::Lorem.paragraph, image: "https://source.unsplash.com/user/erondu/1600x900", title: Faker::PrincessBride.quote)
end

def seed_movies
  puts "Creating Fifteen Movies!"
  Movie.create(level: Level.first, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action, while attempting to liberate a twelve-year-old prostitute.",title: "Taxi Driver", IMDB: "tt0076759", poster: "taxi-driver.jpeg", movie_guide: "foo.pdf")
  Movie.create(level: Level.first, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more." ,title: "Fight Club", IMDB: "tt0076759", poster: "fight-club.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.first, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "A family heads to an isolated hotel for the winter where an evil spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future." ,title: "The Shining", IMDB: "tt0076759", poster: "shining-b.jpeg", movie_guide: "foo.pdf")
  Movie.create(level: Level.second, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "Dorothy Gale is swept away from a farm in Kansas to a magical land of Oz in a tornado and embarks on a quest with her new friends to see the Wizard who can help and her friends." ,title: "The Wizard of Oz", IMDB: "tt0076759", poster: "The-Wizard-of-Oz.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.second, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect." ,title: "Rocky", IMDB: "tt0076759", poster: "rocky.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.third, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "A petroleum exploration expedition comes to an isolated island and encounters a colossal giant gorilla." ,title: "King Kong", IMDB: "tt0076759", poster: "king-kong.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.third, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "A local sheriff, a marine biologist and an old seafarer team up to hunt down a great white shark wreaking havoc in a beach resort." ,title: "Jaws", IMDB: "tt0076759", poster: "jaws-a.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.third, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness." ,title: "Into The Wild", IMDB: "tt0076759", poster: "into_the_wild.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.fourth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "Two 1990s teenage siblings find themselves in a 1950s sitcom where their influence begins to profoundly change that complacent world.", title: "Pleasantville", IMDB: "tt0120789", poster: "pleasantville.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.fourth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "In New Jersey in 1935, a movie character walks off the screen and into the real world." ,title: "The Purple Rose of Cairo", IMDB: "tt0089853", poster: "purple_rose_of_cairo.jpeg", movie_guide: "foo.pdf")
  Movie.create(level: Level.fourth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "In German-occupied Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazi Germans." ,title: "Schindler's List", IMDB: "tt0108052", poster: "schindlers_list.jpg", movie_guide: "foo.pdf")
  Movie.create(level: Level.fifth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the evil Darth Vader." ,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
  Movie.create(level: Level.fifth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the evil Darth Vader." ,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
  Movie.create(level: Level.fifth, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the evil Darth Vader." ,title: Faker::StarWars.quote, IMDB: "tt0076759", poster: "https://source.unsplash.com/user/erondu/142x216", movie_guide: "foo.pdf")
end

def seed_questions
  puts "Creating Quiz For Each Movie (Except Star Wars)"
  Movie.all.each do |movie|
    puts "Adding questions for movie '#{movie.title}'"
    10.times do
      Question.create(movie: movie, content: Faker::Community.quotes)
    end
  end
end

def seed_answers
  puts "Creating Answers For Each Question - The Correct Answer From Faker Will Always Be A Chuck Norris Fact"
  Question.all.each do |question|
    3.times do
      Answer.create(question: question, content: Faker::MostInterestingManInTheWorld.quote)
    end
    Answer.create(question: question, content: Faker::ChuckNorris.fact, correct: true)
  end
end

def seed_wars
  puts "Creating Quiz and Answers for Star Wars"
  starwars = Movie.create(level: Level.second, video: "https://www.youtube.com/watch?v=l_n-Cw_whls", description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the evil Darth Vader." ,title: "Star Wars", IMDB: "tt0076759", poster: "star_wars.jpg", movie_guide: "foo.pdf")

  question1 = Question.create(movie: starwars, content: "The resurrection stage of the hero's journey occurs when:")
  Answer.create(question: question1, content: "Darth Vader reveals that he is Luke's father")
  Answer.create(question: question1, content: "Luke channels Obi-Wan and the force to destroy the Death Star", correct: true)
  Answer.create(question: question1, content: "Luke receives a medal from Princess Leia")
  Answer.create(question: question1, content: "Han Solo returns to help Luke fight the Death Star")

  question2 = Question.create(movie: starwars, content: "Luke receives his call to adventure:")
  Answer.create(question: question2, content: "When Ob-Wan Kenobi reveals himself to be a Jedi knight")
  Answer.create(question: question2, content: "When R2-D2 projects Leia's plea for help", correct: true)
  Answer.create(question: question2, content: "When he goes off in search the missing R2-D2")
  Answer.create(question: question2, content: "When Obi-Wan presents him with hi father's light saber")

  question3 = Question.create(movie: starwars, content: "Luke initially refuses the call to action because:")
  Answer.create(question: question3, content: "He likes his life just as it is")
  Answer.create(question: question3, content: "He feels like the rebellion has nothing to do with him")
  Answer.create(question: question3, content: "He is afraid of spaceships")
  Answer.create(question: question3, content: "He feels an obligation to his aunt and uncle", correct: true)

  question4 = Question.create(movie: starwars, content: "The threshold stage of the hero's journey is represented by:")
  Answer.create(question: question4, content: "Luke's aunt and uncle's farm")
  Answer.create(question: question4, content: "The dessert of Tatooine")
  Answer.create(question: question4, content: "The Milennium Falcon")
  Answer.create(question: question4, content: "The Mos Eisley spaceport", correct: true)

  question5 = Question.create(movie: starwars, content: "During the Ordeal stage of the hero's journey:")
  Answer.create(question: question5, content: "A thug in the cantina picks a fight with Luke")
  Answer.create(question: question5, content: "Luke's aunt and uncle are killed")
  Answer.create(question: question5, content: "Obi-Wan sacrifices himself to save Luke", correct: true)
  Answer.create(question: question5, content: "Princess Leia is killed")

  question6 = Question.create(movie: starwars, content: "Luke's allies are:")
  Answer.create(question: question6, content: "The sand people")
  Answer.create(question: question6, content: "The Jawa traders")
  Answer.create(question: question6, content: "The storm troopers")
  Answer.create(question: question6, content: "Obi-Wan, Han Solo and Chewbaca, R2D2 and C3PO", correct: true)

  question7 = Question.create(movie: starwars, content: "The inmost cave is:")
  Answer.create(question: question7, content: "The Milennium Falcon")
  Answer.create(question: question7, content: "The Death Star", correct: true)
  Answer.create(question: question7, content: "Alderaan")
  Answer.create(question: question7, content: "Mos Eisley")

  question8 = Question.create(movie: starwars, content: "Tatooine corresponds to the:")
  Answer.create(question: question8, content: "Call to  adventure")
  Answer.create(question: question8, content: "Ordinary world", correct: true)
  Answer.create(question: question8, content: "Special world")
  Answer.create(question: question8, content: "Refusal of the call")

  question9 = Question.create(movie: starwars, content: "Who is Luke's mentor?")
  Answer.create(question: question9, content: "Obi-Wan Kenobi", correct: true)
  Answer.create(question: question9, content: "Han Solo")
  Answer.create(question: question9, content: "Princess Leia")
  Answer.create(question: question9, content: "R2-D2")

  question10 = Question.create(movie: starwars, content: "The hero's reward for saving Princess Leia is:")
  Answer.create(question: question10, content: "He receives a cake")
  Answer.create(question: question10, content: "He becomes a pilot in the rebel fleet", correct: true)
  Answer.create(question: question10, content: "He becomes commander of the Death Star")
  Answer.create(question: question10, content: "He receives his father's light saber")
end

def seed_responses
  puts "Seeding Correct Quiz Responses For Steven Spielberg for entire first level"
  Movie.first(5).each do |movie|
    puts "Seeding Correct Quiz Responses For first two movies of level 2" if movie == Movie.fourth
    puts "Seeding #{movie.title} responses"
    movie.questions.all.each do |question|
      Response.create(user: User.first, answer: question.answers.fourth)
    end
  end
  puts "Seeding Correct Quiz Responses for First Seven Star Wars Questions"
  Movie.last.questions.first(7).each do |question|
    Response.create(user: User.first, answer: question.answers.where(correct: true)[0])
  end

end

seed_levels
seed_users
seed_lenses
seed_movies
seed_questions
seed_answers
seed_wars
seed_responses


