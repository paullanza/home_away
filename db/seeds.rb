UsersExpertise.destroy_all
Expertise.destroy_all
User.destroy_all


user = User.create({
  email: 'b@b.b',
  password: 123456,
  origin: 'France',
  residence: 'Canada',
  first_name: 'Jimmy',
  last_name: 'Johnny',
  biography: 'Oh man, all the things I could write here!',
})

exp = Expertise.create(name: "Magician")

UsersExpertise.create(user: user, expertise: exp)
