puts "destroying all"
UsersExpertise.destroy_all
Expertise.destroy_all
Participation.destroy_all
Event.destroy_all
Category.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all

puts "creating expertises"
night_life = Expertise.create(name: "Night Life")
banking = Expertise.create(name: "Banking")
finance = Expertise.create(name: "Finance")
out_sport = Expertise.create(name: "Outdoor Sports")
cultural_act = Expertise.create(name: "Cultural Activities")
rest = Expertise.create(name: "Restaurants")
clothing = Expertise.create(name: "Clothing")
plumbing = Expertise.create(name: "Plumbing")
web = Expertise.create(name: "Web Development")
cars = Expertise.create(name: "Cars")
fitness = Expertise.create(name: "Fitness")
mag = Expertise.create(name: "Magician")
boardgame = Expertise.create(name: "Board Games")

puts "creating users"
carlos = User.create({
                       email: 'a@a.a',
                       password: 123456,
                       origin: 'Brazil',
                       residence: 'Montreal',
                       first_name: 'Carlos',
                       last_name: 'Ribeiro',
                       biography: 'Hi! I am Carlos. I am from Brazil. I love Biking.
                       I enjoy going to the gym and Crossfit. In Brazil I was a plumber'
                     })

user = User.create({
                     email: 'b@b.b',
                     password: 123456,
                     origin: 'Brazil',
                     residence: 'Montreal',
                     first_name: 'Jose',
                     last_name: 'Fontes',
                     biography: 'Oh man, all the things I could write here! To keep it short my name is Maria.
                                 I\'ve been living in Montreal for 4 years now. I work at Rbc
                                 and I love anything food related'
                   })

user2 = User.create({
                      email: 'c@c.c',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Maria',
                      last_name: 'Ribeiro',
                      biography: 'My name is Maria Ribeiro. I am from Sao Paulo.
                                  I used to own one of the best restaurant in Brazil,
                                  and now I am a chef at a very hihgh-end restaurant.'
                    })

user3 = User.create({
                      email: 'd@d.d',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Ana',
                      last_name: 'Texeira',
                      biography: 'I moved to Montreal 2 years ago after I got a very good offer
                                  to work in finance here. So far I really like my time here'
                    })

user4 = User.create({
                      email: 'e@e.e',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Luis',
                      last_name: 'Sequeira',
                      biography: 'I\ve been working at a car dealership for 3 years now.
                                  I speak Portuguese, English and french. During my free time i
                                  enjoy doing magic trick.'
                    })

user5 = User.create({
                      email: 'f@f.f',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Jaoa',
                      last_name: 'Silva',
                      biography: 'I am a Web dev freelancer. I travel the world while working and I am planing to stay
                                  in montreal for at least 1 year.'
                    })

user6 = User.create({
                      email: 'g@g.g',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Oscar',
                      last_name: 'Cardoso',
                      biography: 'I am a young designer from Brazil, I moved in Montreal
                                  1 year ago to purse my dream to become a worldwide designer.'
                    })
user7 = User.create({
                      email: 'h@h.h',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Thomas',
                      last_name: 'Ribeiro',
                      biography: 'I am a bartender in a club in Montreal,
                                  During my free time I love to try new restaurant.'
                    })
user8 = User.create({
                      email: 'i@i.i',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Milton',
                      last_name: 'Riviera',
                      biography: 'My name is Milton. I am borned in Brazil but my parents
                                  are Canadians. I\'ve been working in finance for 2 years.
                                  When I am not working I am at the gym or at a magic show.'
                    })
user9 = User.create({
                      email: 'j@j.j',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Manuel',
                      last_name: 'Antonio',
                      biography: 'I work for a large web dev compagny in Montreal,
                                  I love learning about the culture of country I visit
                                  and going to museum.'
                    })
user10 = User.create({
                      email: 'k@k.k',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Joanna',
                      last_name: 'Costa',
                      biography: 'Hi! I currently am a uber driver.
                                  I am looking for a job in banking.
                                  I love sports car.'
                    })
user11 = User.create({
                      email: 'l@l.',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Heitor',
                      last_name: 'Castro',
                      biography: 'Hey! I work at a small plumbing compagny.
                                  I played professional football in Brazil.
                                  I really like going at bar and club.'
                    })
user12 = User.create({
                      email: 'm@m.m',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Wilson',
                      last_name: 'Bruno',
                      biography: 'I came here to work at a very respected restaurant as a sous-chef
                                  During the week end you can always find me on a tennis field.'
                    })
user13 = User.create({
                      email: 'n@n.n',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Alessandra',
                      last_name: 'Gonzales',
                      biography: 'My name is Alessandra. I love fashion,
                                  I came to Montreal to become a fashion model.'
                    })
user14 = User.create({
                      email: 'o@o.o',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Stinky',
                      last_name: 'Pete',
                      biography: 'I am from Brazilia. I work for the Brazil ambassy in Montreal.'
                    })
user15 = User.create({
                      email: 'p@p.p',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Bruna',
                      last_name: 'Matos',
                      biography: 'I am a UI/UX designer. Althought I am currently living in Montreal
                                  I\'ve lived in more then 7 countrys.'
                    })
user16 = User.create({
                      email: 'q@q.q',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Martin',
                      last_name: 'Macedo',
                      biography: 'My name is Martin. I loved doing any sort of sports.
                                  You will never find my inside on a sunny day, except if I am at the office.'
                    })

UsersExpertise.create(user: user, expertise: out_sport)
UsersExpertise.create(user: user, expertise: finance)
UsersExpertise.create(user: user, expertise: fitness)
UsersExpertise.create(user: user3, expertise: finance)
UsersExpertise.create(user: user2, expertise: rest)
UsersExpertise.create(user: user4, expertise: cars)
UsersExpertise.create(user: user4, expertise: mag)
UsersExpertise.create(user: user5, expertise: web)
UsersExpertise.create(user: user6, expertise: night_life)
UsersExpertise.create(user: user6, expertise: finance)
UsersExpertise.create(user: user7, expertise: rest)
UsersExpertise.create(user: user7, expertise: night_life)
UsersExpertise.create(user: user8, expertise: fitness)
UsersExpertise.create(user: user8, expertise: mag)
UsersExpertise.create(user: user8, expertise: finance)
UsersExpertise.create(user: user9, expertise: cultural_act)
UsersExpertise.create(user: user9, expertise: web)
UsersExpertise.create(user: user10, expertise: cars)
UsersExpertise.create(user: user11, expertise: plumbing)
UsersExpertise.create(user: user11, expertise: night_life)
UsersExpertise.create(user: user11, expertise: out_sport)
UsersExpertise.create(user: user12, expertise: out_sport)
UsersExpertise.create(user: user12, expertise: rest)
UsersExpertise.create(user: user13, expertise: clothing)
UsersExpertise.create(user: user14, expertise: mag)
UsersExpertise.create(user: user14, expertise: finance)
UsersExpertise.create(user: user15, expertise: web)
UsersExpertise.create(user: user16, expertise: finance)
UsersExpertise.create(user: user16, expertise: out_sport)


puts "creating categories"
shoe_exchange = Category.create(name: "Shoe Exchange")
night_life= Category.create(name: "Night Life")
cultural = Category.create(name: "Cultural Activities")
mount_biking = Category.create(name: "Mountain Biking")
sports = Category.create(name: "Sports")
hiking = Category.create(name: "Hiking")
social = Category.create(name: "Social Activities")
food = Category.create(name: "Foods Related Activities")
roadtrip = Category.create(name: "Roadtrip")
video_game = Category.create(name: "Video Game")
cinema = Category.create(name: "Cinema")
music = Category.create(name: "Music")

puts "creating events"
dinner = Event.create({
                        title: "Dinner at Le Milsa",
                        date: Date.new(2022, 05, 30),
                        location: "Montreal",
                        address: "1476 Crescent, Montreal, QC",
                        starting_time: "19:00",
                        ending_time: "22:00",
                        description: "Dinner at a very good brazilian restaurant in Montreal for those who miss home",
                        category: food,
                        user: user2
                      })

festival = Event.create({
                          title: "Brazilian Music festival",
                          date: Date.new(2022, 07, 04),
                          location: "Montreal",
                          address: "Parc Jean-Drapeau, Montreal, QC",
                          starting_time: "14:00",
                          ending_time: "23:00",
                          description: "Some of the best Brazilian artists will be performing in Montreal",
                          category: music,
                          user: user3
                        })
out_mov = Event.create({
                         title: "Outdoor Movies",
                         date: Date.new(2022, 07, 24),
                         location: "Montreal",
                         address: "Parc Laurier, Montreal, QC",
                         starting_time: "18:00",
                         ending_time: "22:00",
                         description: "We will be screening two Brazilian movies in the park",
                         category: cinema,
                         user: user4
                       })
braz_bik = Event.create({
                          title: "Brazilian Biking at Bromont",
                          date: Date.new(2022, 06, 14),
                          location: "Montreal",
                          address: "Bromont, QC",
                          starting_time: "12:00",
                          ending_time: "15:00",
                          description: "A day of mount biking at bromont",
                          category: mount_biking,
                          user: user5
                        })
sneaker_con = Event.create({
                             title: "Sneaker Con",
                             date: Date.new(2022, 06, 11),
                             location: "Montreal",
                             address: "1001 Pl. Jean-Paul-Riopelle, Montréal, QC",
                             starting_time: "12:00",
                             ending_time: "19:00",
                             description: "People will be able to sell and trade sneakers",
                             category: shoe_exchange,
                             user: user6
                           })
bar_crawl = Event.create({
                           title: "Bar Crawl",
                           date: Date.new(2022, 05, 28),
                           location: "Montreal",
                           address: "Metro Berri-Uqam, Montreal, QC",
                           starting_time: "20:00",
                           ending_time: "03:00",
                           description: "We will be crawling some of the best bar in town",
                           category: night_life,
                           user: user4
                         })
foot_game = Event.create({
                           title: "Football Game",
                           date: Date.new(2022, 06, 04),
                           location: "Montreal",
                           address: "Parc Villeray, Montréal, QC",
                           starting_time: "14:00",
                           ending_time: "16:00",
                           description: "Looking for enought people to play 7 a side game of football",
                           category: sports,
                           user: user5
                         })
quebec = Event.create({
                        title: "Roadtrip to Quebec City",
                        date: Date.new(2022, 07, 13),
                        location: "Montreal",
                        address: "Metro Jean-Talon, Montréal, QC",
                        starting_time: "06:00",
                        ending_time: "22:00",
                        description: "A day trip to Quebec City",
                        category: roadtrip,
                        user: user5
})
museum = Event.create({
                        title: "Museums tour",
                        date: Date.new(2022, 07, 23),
                        location: "Montreal",
                        address: "11 Place Ville Marie, Montréal, QC",
                        starting_time: "15:00",
                        ending_time: "17:00",
                        description: "A visit of some of the best museum in town",
                        category: cultural,
                        user: user13
                      })
cooking_class = Event.create({
                               title: "Cooking Class",
                               date: Date.new(2022, 07, 11),
                               location: "Montreal",
                               address: "6565 Jarry, Montréal, QC",
                               starting_time: "17:00",
                               ending_time: "19:00",
                               description: "A cooking class with a world class chef",
                               category: food,
                               user: user15
                             })
tennis = Event.create({
                        title: "Tennis Match",
                        date: Date.new(2022, 10, 19),
                        location: "Montreal",
                        address: "Parc Jeanne-Mance, Montréal, QC",
                        starting_time: "13:00",
                        ending_time: "16:00",
                        description: "Looking for peoples to play tennis",
                        category: sports,
                        user: user16
                      })
jamming = Event.create({
                         title: "Jamming session",
                         date: Date.new(2022, 11, 1),
                         location: "Montreal",
                         address: "Mont-Royal, Montréal, QC",
                         starting_time: "14:00",
                         ending_time: "17:00",
                         description: "Looking for people to jam",
                         category: music,
                         user: user14
                       })
hiking_st_bruno = Event.create({
                                 title: "Hiking at St-Bruno",
                                 date: Date.new(2022, 07, 19),
                                 location: "Montreal",
                                 address: "330 Rang des Vingt Cinq E, Saint-Bruno-de-Montarville, QC",
                                 starting_time: "10:00",
                                 ending_time: "16:00",
                                 description: "A day of hiking at mont St-Bruno",
                                 category: hiking,
                                 user: user13
                              })
club = Event.create({
                      title: "Night Out at the Club",
                      date: Date.new(2022, 07, 19),
                      location: "Montreal",
                      address: "3781 Boul. Saint-Laurent,Montreal, QC",
                      starting_time: "22:00",
                      ending_time: "03:00",
                      description: "Looking for people that enjoy clubing",
                      category: night_life,
                      user: user2
                    })
board = Event.create({
                       title: "Board Game Night",
                       date: Date.new(2022, 10, 29),
                       location: "Montreal",
                       address: "6505 Rue Des Ecores, Montreal, QC",
                       starting_time: "17:00",
                       ending_time: "22:00",
                       description: "Looking for people that enjoy playing board game",
                       category: social,
                       user: user16
                     })

hiking_st_hilaire = Event.create({
                               title: "Hiking at St-Hilaire",
                               date: Date.new(2022, 10, 29),
                               location: "Montreal",
                               address: "Mont-Saint-Hilaire, Saint-Hilaire, QC",
                               starting_time: "10:00",
                               ending_time: "18:00",
                               description: "Hiking as St-Hilaire",
                               category: hiking,
                               user: user13
                             })

puts "creating participations"
Participation.create(user: user3, event: festival)
Participation.create(user: user, event: festival)
Participation.create(user: user5, event: festival)
Participation.create(user: user6, event: foot_game)
Participation.create(user: user4, event: foot_game)
Participation.create(user: user3, event: bar_crawl)
Participation.create(user: user6, event: bar_crawl)
Participation.create(user: user2, event: bar_crawl)
Participation.create(user: user3, event: sneaker_con)
Participation.create(user: user, event: sneaker_con)
Participation.create(user: user2, event: sneaker_con)
Participation.create(user: user5, event: braz_bik)
Participation.create(user: user, event: braz_bik)
Participation.create(user: user6, event: out_mov)
Participation.create(user: user4, event: out_mov)
Participation.create(user: user13, event: dinner)
Participation.create(user: user4, event: dinner)
Participation.create(user: user2, event: dinner)
Participation.create(user: user6, event: dinner)
Participation.create(user: user6, event: hiking_st_bruno)
Participation.create(user: user3, event: hiking_st_bruno)
Participation.create(user: user11, event: hiking_st_bruno)
Participation.create(user: user13, event: hiking_st_bruno)
Participation.create(user: user16, event: cooking_class)
Participation.create(user: user14, event: cooking_class)
Participation.create(user: user11, event: club)
Participation.create(user: user12, event: club)
Participation.create(user: user2, event: jamming)
Participation.create(user: user15, event: jamming)
Participation.create(user: user9, event: jamming)
Participation.create(user: user8, event: tennis)
Participation.create(user: user8, event: museum)
Participation.create(user: user7, event: museum)
Participation.create(user: user14, event: foot_game)
Participation.create(user: user15, event: foot_game)
Participation.create(user: user5, event: board)
Participation.create(user: user15, event: board)
Participation.create(user: user12, event: foot_game)
Participation.create(user: user13, event: foot_game)
Participation.create(user: user11, event: foot_game)
Participation.create(user: user10, event: foot_game)
Participation.create(user: user9, event: foot_game)
Participation.create(user: user8, event: foot_game)
Participation.create(user: user10, event: quebec)
Participation.create(user: user11, event: quebec)
Participation.create(user: user11, event: tennis)
Participation.create(user: user, event: board)
Participation.create(user: user, event: museum)
Participation.create(user: user16, event: bar_crawl)
