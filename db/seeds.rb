# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coin.create(value: 0.01, name: "penny")
Coin.create(value: 0.05, name: "nickel")
Coin.create(value: 0.10, name: "dime")
Coin.create(value: 0.25, name: "quarter")

User.create(name: "Julisa", email: "julisa.anderson@gmail.com", password_digest: "password", admin: true, api_key: "aaa")
User.create(name: "Michael", email: "michael@gmail.com", password_digest: "password", admin: false, api_key: "bbb")
User.create(name: "Jane", email: "jane@email.com", password_digest:"password", admin: false, api_key: "ccc")
User.create(name: "Dale", email: "dale.bryant.com", password_digest: "password", admin: true, api_key: "aaa")
User.create(name: "George", email: "georgecode@gmail.com", password_digest: "password", admin: false, api_key: "bbb")
User.create(name: "Julie", email: "julie@email.com", password_digest:"password", admin: false, api_key: "ccc")