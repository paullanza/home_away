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

puts "creating users"
carlos = User.create({
                       email: 'a@a.a',
                       password: 123456,
                       origin: 'Brazil',
                       residence: 'Montreal',
                       first_name: 'Carlos',
                       last_name: 'Ribeiro',
                       biography: 'Oh man, all the things I could write here!'
                     })

user = User.create({
                     email: 'b@b.b',
                     password: 123456,
                     origin: 'Brazil',
                     residence: 'Montreal',
                     first_name: 'Maria',
                     last_name: 'Fontes',
                     biography: 'Oh man, all the things I could write here!'
                   })

user2 = User.create({
                      email: 'c@c.c',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Jose',
                      last_name: 'Ribeiro',
                      biography: 'Oh man, all the things I could write here!'
                    })

user3 = User.create({
                      email: 'd@d.d',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Ana',
                      last_name: 'Texeira',
                      biography: 'Oh man, all the things I could write here!'
                    })

user4 = User.create({
                      email: 'e@e.e',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Luis',
                      last_name: 'Sequeira',
                      biography: 'Oh man, all the things I could write here!'
                    })

user5 = User.create({
                      email: 'f@f.f',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Jaoa',
                      last_name: 'Silva',
                      biography: 'Oh man, all the things I could write here!'
                    })

user6 = User.create({
                      email: 'g@g.g',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Oscar',
                      last_name: 'Cardoso',
                      biography: 'Oh man, all the things I could write here!'
                    })
user7 = User.create({
                      email: 'h@h.h',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Thomas',
                      last_name: 'Ribeiro',
                      biography: 'Oh man, all the things I could write here!'
                    })
user8 = User.create({
                      email: 'i@i.i',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Milton',
                      last_name: 'Riviera',
                      biography: 'Oh man, all the things I could write here!'
                    })
user9 = User.create({
                      email: 'j@j.j',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Manuel',
                      last_name: 'Antonio',
                      biography: 'Oh man, all the things I could write here!'
                    })
user10 = User.create({
                      email: 'k@k.k',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Joanna',
                      last_name: 'Costa',
                      biography: 'Oh man, all the things I could write here!'
                    })
user11 = User.create({
                      email: 'l@l.',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Heitor',
                      last_name: 'Castro',
                      biography: 'Oh man, all the things I could write here!'
                    })
user12 = User.create({
                      email: 'm@m.m',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Wilson',
                      last_name: 'Bruno',
                      biography: 'Oh man, all the things I could write here!'
                    })
user13 = User.create({
                      email: 'n@n.n',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Alessandra',
                      last_name: 'Gonzales',
                      biography: 'Oh man, all the things I could write here!'
                    })
user14 = User.create({
                      email: 'o@o.o',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Hector',
                      last_name: 'Matos',
                      biography: 'Oh man, all the things I could write here!'
                    })
user15 = User.create({
                      email: 'p@p.p',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Bruna',
                      last_name: 'Matos',
                      biography: 'Oh man, all the things I could write here!'
                    })
user16 = User.create({
                      email: 'q@q.q',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Martin',
                      last_name: 'Macedo',
                      biography: 'Oh man, all the things I could write here!'
                    })

UsersExpertise.create(user: user, expertise: night_life)
UsersExpertise.create(user: user, expertise: banking)
UsersExpertise.create(user: user, expertise: cultural_act)
UsersExpertise.create(user: user, expertise: out_sport)
UsersExpertise.create(user: carlos, expertise: fitness)
UsersExpertise.create(user: carlos, expertise: plumbing)
UsersExpertise.create(user: user3, expertise: finance)
UsersExpertise.create(user: user3, expertise: rest)
UsersExpertise.create(user: user4, expertise: cars)
UsersExpertise.create(user: user4, expertise: mag)
UsersExpertise.create(user: user5, expertise: web)
UsersExpertise.create(user: user6, expertise: clothing)
UsersExpertise.create(user: user7, expertise: rest)
UsersExpertise.create(user: user7, expertise: night_life)
UsersExpertise.create(user: user8, expertise: fitness)
UsersExpertise.create(user: user8, expertise: mag)
UsersExpertise.create(user: user8, expertise: finance)
UsersExpertise.create(user: user9, expertise: cultural_act)
UsersExpertise.create(user: user9, expertise: web)
UsersExpertise.create(user: user10, expertise: car)
UsersExpertise.create(user: user11, expertise: plumbing)
UsersExpertise.create(user: user11, expertise: night_life)
UsersExpertise.create(user: user11, expertise: out_sport)
UsersExpertise.create(user: user12, expertise: out_sport)
UsersExpertise.create(user: user12, expertise: rest)
UsersExpertise.create(user: user13, expertise: clothing)
UsersExpertise.create(user: user14, expertise: mag)
UsersExpertise.create(user: user14, expertise: clothing)
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
                        description: "Dinner at a very good brazilian restaurant in Montreal for those who miss home",
                        category: food,
                        user: user2
                      })

festival = Event.create({
                          title: "Brazilian Music festival",
                          date: Date.new(2022, 07, 04),
                          location: "Montreal",
                          description: "Some of the best Brazilian artists will be performing in Montreal",
                          category: music,
                          user: user3
                        })
out_mov = Event.create({
                         title: "Outdoor Movies",
                         date: Date.new(2022, 07, 24),
                         location: "Montreal",
                         description: "We will be screening two Brazilian movies in the park",
                         category: cinema,
                         user: user4
                       })
braz_bik = Event.create({
                          title: "Brazilian Biking at Bromont",
                          date: Date.new(2022, 06, 14),
                          location: "Montreal",
                          description: "A day of mount biking at bromont",
                          category: mount_biking,
                          user: user5
                        })
sneaker_con = Event.create({
                             title: "Sneaker Con",
                             date: Date.new(2022, 06, 11),
                             location: "Montreal",
                             description: "People will be able to sell and trade sneakers",
                             category: shoe_exchange,
                             user: user6
                           })
bar_crawl = Event.create({
                           title: "Bar Crawl",
                           date: Date.new(2022, 05, 28),
                           location: "Montreal",
                           description: "We will be crawling some of the best bar in town",
                           category: night_life,
                           user: user4
                         })
foot_game = Event.create({
                           title: "Football Game",
                           date: Date.new(2022, 06, 24),
                           location: "Montreal",
                           description: "Looking for enought people to play 7 a side game of football",
                           category: sports,
                           user: user5
                         })

quebec = Event.create({
                        title: "Roadtrip to Quebec City",
                        date: Date.new(2022, 07, 13),
                        location: "Montreal",
                        description: "A day trip to Quebec City",
                        category: roadtrip,
                        user: user5
})

hiking_st_hil = Event.create({
                               title: "Hiking at St-Hilaire",
                               date: Date.new(2022, 07, 19),
                               location: "Montreal",
                               description: "A day of hiking at mont St-Hilaire",
                               category: hiking,
                               user: user2
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
Participation.create(user: user3, event: dinner)
Participation.create(user: user4, event: dinner)
Participation.create(user: user2, event: dinner)
Participation.create(user: user6, event: dinner)
Participation.create(user: user6, event: hiking_st_hil)
Participation.create(user: user3, event: hiking_st_hil)
Participation.create(user: user3, event: quebec)
