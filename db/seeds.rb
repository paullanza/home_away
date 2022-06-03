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
out_sport = Expertise.create(name: "Sports")
cultural_act = Expertise.create(name: "Cultural Activities")
rest = Expertise.create(name: "Restaurants")
clothing = Expertise.create(name: "Clothing")
plumbing = Expertise.create(name: "Plumbing")
web = Expertise.create(name: "Web Development")
cars = Expertise.create(name: "Cars")
fitness = Expertise.create(name: "Fitness")
mag = Expertise.create(name: "Magic")
boardgame = Expertise.create(name: "Board Games")

puts "creating users"

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
                      biography: 'I\'ve been working at a car dealership for 3 years now.
                                  I speak Portuguese, English and french. During my free time i
                                  enjoy doing magic trick.'
                    })

user5 = User.create({
                      email: 'f@f.f',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'João',
                      last_name: 'Silva',
                      biography: 'I am a Web dev freelancer. I travel the world while working and I am planing to stay
                                  in Montreal for at least 1 year.'
                    })

user6 = User.create({
                      email: 'g@g.g',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Oscar',
                      last_name: 'Cardoso',
                      biography: 'I am a young designer from Brazil, I moved to Montreal
                                  1 year ago to purse my dream to become a worldwide designer.'
                    })

user7 = User.create({
                      email: 'h@h.h',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Thomas',
                      last_name: 'Ribeiro',
                      biography: 'I am a bartender at a club in Montreal,
                                  During my free time I love to try new restaurant.'
                    })

user8 = User.create({
                      email: 'i@i.i',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Milton',
                      last_name: 'Riviera',
                      biography: 'My name is Milton. I was born in Brazil but my parents
                      are Canadians. I\'ve been working in finance for 2 years.
                      When I am not working I am at the gym or doing magic.'
                      })
carlos = User.create({
                      email: 'a@a.a',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Carlos',
                      last_name: 'Ribeiro',
                      biography: 'Growing up in Brazil, I always dreamed of seeing the world. After travelling with my family for many years, we finally decided to move to Montreal.'
                      })

user = User.create({
                    email: 'b@b.b',
                    password: 123456,
                    origin: 'Brazil',
                    residence: 'Montreal',
                    first_name: 'Jose',
                    last_name: 'Fontes',
                    biography: 'Oh man, all the things I could write here! To keep it short my name is Jose. I\'ve been living in Montreal for 4 years now. I work at RBC and I love playing soccer and workning out!'
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
                                  I love sports cars.'
                    })
user11 = User.create({
                      email: 'l@l.l',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Heitor',
                      last_name: 'Castro',
                      biography: 'Hey! I work at a small plumbing compagny.
                                  I played semi-professional football in Brazil.
                                  I really like going to bars and dancing in clubs.'
                    })
user12 = User.create({
                      email: 'm@m.m',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Wilson',
                      last_name: 'Bruno',
                      biography: 'I came here to work at a very respected restaurant as a sous-chef. On weekends you can always find me on a tennis court.'
                    })
user13 = User.create({
                      email: 'n@n.n',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Alessandra',
                      last_name: 'Gonzales',
                      biography: 'My name is Alessandra. I love fashion,
                                  I came to Montreal to become a fashion model!'
                    })
user14 = User.create({
                      email: 'o@o.o',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Jacinto',
                      last_name: 'Pinto',
                      biography: 'I have my shots, and a passport, I\'m ready to see the world and dazzle everyone! I\'ll be in Montreal for a little while longer if you\'re looking for some magic :)'
                    })
user15 = User.create({
                      email: 'p@p.p',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Bruna',
                      last_name: 'Matos',
                      biography: 'I am a UI/UX designer. Althought I am currently living in Montreal
                                  I\'ve lived in more then 7 countries.'
                    })
user16 = User.create({
                      email: 'q@q.q',
                      password: 123456,
                      origin: 'Brazil',
                      residence: 'Montreal',
                      first_name: 'Martin',
                      last_name: 'Macedo',
                      biography: 'My name is Martin. I love doing any sort of sports!
                                  You will never find me inside on a sunny day, except if I am at the office. :('
                    })

puts "Opening Photos"

paul = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654097628/development/240739733_402519401206811_4856394276528761759_ncrop2_dipzit.jpg')
stinky_pete = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654097640/development/IMG_2172_r6ousl.jpg')
jose = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654097948/development/ben-parker-OhKElOkQ3RE-unsplash_q5thrn.jpg')
ana = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654097992/development/aiony-haust-3TLl_97HNJo-unsplash_qijn1f.jpg')
maria = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098031/development/christina-wocintechchat-com-0Zx1bDv5BNY-unsplash_emtlme.jpg')
luis = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098151/development/joseph-gonzalez-iFgRcqHznqg-unsplash_nn5xq4.jpg')
jaoa = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098216/development/julian-wan-WNoLnJo7tS8-unsplash_yy0ttg.jpg')
oscar = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098254/development/jurica-koletic-7YVZYZeITc8-unsplash_f9qtad.jpg')
thomas = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098287/development/lesly-juarez-RukI4qZGlQs-unsplash_dfisk2.jpg')
milton = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098317/development/linkedin-sales-solutions-pAtA8xe_iVM-unsplash_gjrdcv.jpg')
manuel = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098346/development/luis-villasmil-hh3ViD0r0Rc-unsplash_t60txa.jpg')
joanna = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098406/development/jake-nackos-IF9TK5Uy-KI-unsplash_xp38bk.jpg')
heitor = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098437/development/redd-pzOUnvx9c1E-unsplash_jtmlrw.jpg')
wilson = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098488/development/taylor-8Vt2haq8NSQ-unsplash_tgzoif.jpg')
allessandra = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098554/development/michael-dam-mEZ3PoFGs_k-unsplash_gtt6wr.jpg')
bruna = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098625/development/stefan-stefancik-QXevDflbl8A-unsplash_xoxdpj.jpg')
martin = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654098719/development/albert-dera-ILip77SbmOE-unsplash_ctsi9m.jpg')

puts "Adding Photos"

user2.photo.attach(io: maria, filename: 'maria.png', content_type: 'image/png')
user3.photo.attach(io: ana, filename: 'ana.png', content_type: 'image/png')
user4.photo.attach(io: luis, filename: 'luis.png', content_type: 'image/png')
user5.photo.attach(io: jaoa, filename: 'jaoa.png', content_type: 'image/png')
user6.photo.attach(io: oscar, filename: 'oscar.png', content_type: 'image/png')
user7.photo.attach(io: thomas, filename: 'thomas.png', content_type: 'image/png')
user8.photo.attach(io: milton, filename: 'milton.png', content_type: 'image/png')
user9.photo.attach(io: manuel, filename: 'manuel.png', content_type: 'image/png')
user10.photo.attach(io: joanna, filename: 'joanna.png', content_type: 'image/png')
user11.photo.attach(io: heitor, filename: 'heitor.png', content_type: 'image/png')
user12.photo.attach(io: wilson, filename: 'wilson.png', content_type: 'image/png')
user13.photo.attach(io: allessandra, filename: 'allessandra.png', content_type: 'image/png')
user15.photo.attach(io: bruna, filename: 'bruna.png', content_type: 'image/png')
user.photo.attach(io: jose, filename: 'jose.png', content_type: 'image/png')
user16.photo.attach(io: martin, filename: 'martin.png', content_type: 'image/png')
user14.photo.attach(io: stinky_pete, filename: 'pete.png', content_type: 'image/png')
carlos.photo.attach(io: paul, filename: 'paul.png', content_type: 'image/png')

puts "creating expertise"

UsersExpertise.create(user: user, expertise: out_sport)
UsersExpertise.create(user: user, expertise: banking)
UsersExpertise.create(user: user, expertise: fitness)
UsersExpertise.create(user: user3, expertise: finance)
UsersExpertise.create(user: user2, expertise: rest)
UsersExpertise.create(user: user4, expertise: cars)
UsersExpertise.create(user: user4, expertise: mag)
UsersExpertise.create(user: user5, expertise: web)
UsersExpertise.create(user: user6, expertise: night_life)
UsersExpertise.create(user: user6, expertise: banking)
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
UsersExpertise.create(user: user14, expertise: banking)
UsersExpertise.create(user: user15, expertise: web)
UsersExpertise.create(user: user16, expertise: finance)
UsersExpertise.create(user: user16, expertise: out_sport)


puts "creating categories"
shoe_exchange = Category.create(name: "Shoe Exchange")
night_life= Category.create(name: "Night Life")
cultural = Category.create(name: "Cultural")
mount_biking = Category.create(name: "Mountain Biking")
sports = Category.create(name: "Sports")
hiking = Category.create(name: "Hiking")
social = Category.create(name: "Social")
food = Category.create(name: "Food")
roadtrip = Category.create(name: "Roadtrip")
video_game = Category.create(name: "Video Games")
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
                        description: "Dinner at a very nice Brazilian restaurant in Montreal for those who miss home",
                        category: food,
                        user: user2
                      })

festival = Event.create({
                          title: "Brazilian Music festival",
                          date: Date.new(2022, 06, 11),
                          location: "Montreal",
                          address: "Parc Jean-Drapeau, Montreal, QC",
                          starting_time: "14:00",
                          ending_time: "23:00",
                          description: "Some of the best Brazilian artists will be performing in Montreal!",
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
                         description: "A screening of two Brazilian movies in the park!",
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
                          description: "A day of mountain biking at Mont Bromont, great trails!",
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
                             description: "People will be able to sell and trade sneakers, with some sneak peaks for the coming collections!",
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
                           description: "Pub crawl to some of the best places in town. We've even found a place that has cachaca!",
                           category: night_life,
                           user: user4
                         })
foot_game = Event.create({
                           title: "Pick Up Soccer Game",
                           date: Date.new(2022, 06, 04),
                           location: "Montreal",
                           address: "Parc Villeray, Montréal, QC",
                           starting_time: "14:00",
                           ending_time: "16:00",
                           description: "Looking for enought people to play 7 a side game of football (soccer :D)",
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
                        description: "A day trip to Quebec City, to see all the amazing french history!",
                        category: roadtrip,
                        user: user5
})
museum = Event.create({
                        title: "Museum Tour",
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
                               description: "A cooking class with a famous world class chef!",
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
                        description: "Looking for peoples to play tennis, there's plenty of full size courts in the park. Bring your own racket and balls please!",
                        category: sports,
                        user: user16
                      })
jamming = Event.create({
                         title: "Outdoor Jam",
                         date: Date.new(2022, 11, 1),
                         location: "Montreal",
                         address: "Mont-Royal, Montréal, QC",
                         starting_time: "14:00",
                         ending_time: "17:00",
                         description: "Looking for people to jam :) All levels, any instrument.",
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
                                 description: "A day of hiking at Mont St-Bruno, with a little picnic at the top. Must bring your own food.",
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
                      description: "Looking for people that enjoy clubing/dancing/having a good time!",
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
                       description: "Anything from Catan to Monopoly! Come have some drinks and play some games.",
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

puts "getting event photos"

dinner_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181190/development/dinner_at_le_milsa_sakqj3.jpg')
festival_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181165/development/brazilian_music_festival_jwrd7o.jpg')
out_mov_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181192/development/outdoor_movies_sayd1o.jpg')
braz_bik_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181180/development/bike_at_bromon_wg8uun.jpg')
sneaker_con_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181175/development/sneaker_con_a9frxe.jpg')
bar_crawl_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181167/development/bar_crawl_s1czal.jpg')
foot_game_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181183/development/footbal_game_e1cex0.jpg')
quebec_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181176/development/road_trip_to_quebec_xw3h8a.jpg')
museum_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181194/development/museums_tour_uedeys.jpg')
cooking_class_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181178/development/cooking_lessons_jog86z.jpg')
tennis_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181172/development/tennis_match_mv7sfo.jpg')
jamming_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181191/development/jam_session_uzzia8.jpg')
hiking_st_bruno_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181196/development/hiking_at_st_bruno_pmewqb.jpg')
club_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181185/development/night_out_at_the_club_turyga.jpg')
board_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181182/development/board_game_night_hfyynd.jpg')
hiking_st_hilaire_image = URI.open('https://res.cloudinary.com/hafh/image/upload/v1654181196/development/hiking_at_st_hilaire_fqiiop.jpg')

puts "adding event photos"

dinner.photo.attach(io: dinner_image, filename: 'dinner_image.jpg', content_type: 'image/jpg')
festival.photo.attach(io: festival_image, filename: 'festival_image.jpg', content_type: 'image/jpg')
out_mov.photo.attach(io: out_mov_image, filename: 'out_mov_image.jpg', content_type: 'image/jpg')
braz_bik.photo.attach(io: braz_bik_image, filename: 'braz_bik_image.jpg', content_type: 'image/jpg')
sneaker_con.photo.attach(io: sneaker_con_image, filename: 'sneaker_con_image.jpg', content_type: 'image/jpg')
bar_crawl.photo.attach(io: bar_crawl_image, filename: 'bar_crawl_image.jpg', content_type: 'image/jpg')
foot_game.photo.attach(io: foot_game_image, filename: 'foot_game_image.jpg', content_type: 'image/jpg')
quebec.photo.attach(io: quebec_image, filename: 'quebec_image.jpg', content_type: 'image/jpg')
museum.photo.attach(io: museum_image, filename: 'museum_image.jpg', content_type: 'image/jpg')
cooking_class.photo.attach(io: cooking_class_image, filename: 'cooking_class_image.jpg', content_type: 'image/jpg')
tennis.photo.attach(io: tennis_image, filename: 'tennis_image.jpg', content_type: 'image/jpg')
jamming.photo.attach(io: jamming_image, filename: 'jamming_image.jpg', content_type: 'image/jpg')
hiking_st_bruno.photo.attach(io: hiking_st_bruno_image, filename: 'hiking_st_bruno_image.jpg', content_type: 'image/jpg')
club.photo.attach(io: club_image, filename: 'club_image.jpg', content_type: 'image/jpg')
board.photo.attach(io: board_image, filename: 'board_image.jpg', content_type: 'image/jpg')
hiking_st_hilaire.photo.attach(io: hiking_st_hilaire_image, filename: 'hiking_st_hilaire_image.jpg', content_type: 'image/jpg')

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
Participation.create(user: carlos, event: festival)
