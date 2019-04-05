# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email:'contact@rubyvkube.ru',
  password: 'password',
  first_name: 'Roman',
  last_name: 'Klevtsov',
  password_confirmation: 'password',
  role: :admin,
  # confirmed_at: Time.now

)

User.create(
  email:'robot@rubyvkube.ru',
  first_name: 'Piter',
  last_name: 'Pen',
  password: 'password',
  password_confirmation: 'password',
  role: :manager,
  # confirmed_at: Time.now
)

Ticket.create(
  (1..10).map{ |i| 
    {
      title: "Ticket number #{i+1}",
      body: "We have some problem",
      status: :new,
      user: User.managers.last
    }
  }
)