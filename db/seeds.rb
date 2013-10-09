# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

days_of_summer = Movie.create({
    title: "(500) Days of Summer",
    poster_url: "http://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Five_hundred_days_of_summer.jpg/220px-Five_hundred_days_of_summer.jpg",
    trailer_url: "http://youtu.be/PsD0NpFSADM",
    description: "An offbeat romantic comedy about a woman who doesn't believe true love exists, and the young man who falls for her."
  })

yes_man = Movie.create({
    title: "Yes Man",
    poster_url: "http://upload.wikimedia.org/wikipedia/en/thumb/7/71/YesMan2008poster.jpg/220px-YesMan2008poster.jpg",
    trailer_url: "http://youtu.be/rvpsiIe2vBE",
    description: "A guy challenges himself to say 'yes' to everything for an entire year."
  })

jim_carrey = Star.create(name: 'Jim Carrey',
                      headshot_url: 'http://ia.media-imdb.com/images/M/MV5BMTQwMjAwNzI0M15BMl5BanBnXkFtZTcwOTY1MTMyOQ@@._V1_SY317_CR22,0,214,317_.jpg',
                      bio: 'Jim Carrey, a Canadian-born actor who became a naturalized American citizen in 2004, is an actor and producer famous for his rubbery body movements and flexible facial expressions.')

zooey = Star.create(name: 'Zooey Deschanel',
                      headshot_url: 'http://ia.media-imdb.com/images/M/MV5BMTQ4Mjk3NDA1MF5BMl5BanBnXkFtZTcwMDAyNTYxNw@@._V1_SY317_CR104,0,214,317_.jpg',
                      bio: 'Zooey Deschanel writes music, sings, and acts on screens, small and big. She is one half of the indie folk band She & Him.')

joseph = Star.create(name: 'Joseph Gordon-Levitt',
                      headshot_url: 'http://ia.media-imdb.com/images/M/MV5BMTQzOTg0NTkzNF5BMl5BanBnXkFtZTcwNTQ4MTcwOQ@@._V1_SY317_CR35,0,214,317_.jpg',
                      bio: 'Joseph Gordon-Levitt is an American actor, director, producer, and writer. As a child star, he appeared in the films A River Runs Through It, Angels in the Outfield, Beethoven, and 10 Things I Hate About You, and as Tommy Solomon in the TV series 3rd Rock from the Sun.')

yes_man.roles.create(character: 'Carl', star: jim_carrey)
yes_man.roles.create(character: 'Allison', star: zooey)

days_of_summer.roles.create(character: 'Tom', star: joseph)
days_of_summer.roles.create(character: 'Summer', star: zooey)

yes_man.showtimes.create location: 'Violet Crown Cinema', time: '10:00 PM'
yes_man.showtimes.create location: 'Violet Crown Cinema', time: '1:00 PM'
yes_man.showtimes.create location: 'Alamo Drafthouse', time: '4:00 PM'

days_of_summer.showtimes.create location: 'Violet Crown Cinema', time: '11:00 AM'
days_of_summer.showtimes.create location: 'Alamo Drafthouse', time: '2:30PM'
days_of_summer.showtimes.create location: 'Alamo Drafthouse', time: '5:00PM'






