# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create(username: 'Test User1', email: 'test1@gmail.com', password: 'ASdf@123', password_confirmation: 'ASdf@123')
User.create(username: 'Test User2', email: 'test2@gmail.com', password: 'ASdf@123', password_confirmation: 'ASdf@123')
User.create(username: 'Test User3', email: 'test3@gmail.com', password: 'ASdf@123', password_confirmation: 'ASdf@123')
