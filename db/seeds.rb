UsersExpertise.destroy_all
Event.destroy_all
Expertise.destroy_all
Category.destroy_all
User.destroy_all

user = User.create({
  email: 'b@b.b',
  password: 123456,
  origin: 'France',
  residence: 'Canada',
  first_name: 'Jimmy',
  last_name: 'Johnny',
  biography: 'Oh man, all the things I could write here!'
})

exp = Expertise.create(name: "Magician")

cat = Category.create(name: "Shoe Exchansge")

event_one = Event.create({
  title: "Some stuff",
  date: Date.new(2022, 05, 24),
  location: "This City",
  description: "Holy cow this is some real cool stuff!",
  category: cat,
  user: user
})

UsersExpertise.create(user: user, expertise: exp)
