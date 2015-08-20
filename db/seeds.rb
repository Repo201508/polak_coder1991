# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




Admin.destroy_all
Tatuer.destroy_all
Product.destroy_all
User.destroy_all
Review.destroy_all




Admin.create(email: 'admin@example.com', password: 'pass1234', password_confirmation: 'pass1234')
p 'admin created.'



Tatuer.create(first_name: "Mark", last_name: "Tribal", description: "Hi... I am, Mark. I am specialized in tribal style tatoo's. Come through my gallery, to find something interesting!", created_at: "2015-08-12 21:07:50", updated_at: "2015-08-20 13:55:02", avatar_file_name: "tatuer_1.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 7836, avatar_updated_at: "2015-08-12 23:37:28", style_file_name: "style_tribal.png", style_content_type: "image/png", style_file_size: 50433, style_updated_at: "2015-08-20 13:54:59", style_name: "Tribal")
Tatuer.create(first_name: "Anthony", last_name: "Tribal-Wolf", description: "Hi... I am, Anthony. I am specialized in tribal-wolf style...", created_at: "2015-08-12 21:23:22", updated_at: "2015-08-20 13:55:43", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, style_file_name: "style_tribal_wolf.png", style_content_type: "image/png", style_file_size: 45953, style_updated_at: "2015-08-20 13:55:40", style_name: "Tribal-wolf")
p '2 tatuers created.'

Product.create(price: 229, description: "Tatuaż tribal na przednią część przedramienia", created_at: "2015-08-12 09:05:23", updated_at: "2015-08-14 00:50:52", avatar_file_name: "tribal_1.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 120088, avatar_updated_at: "2015-08-14 00:50:51", name: "Tribal 1", tatuer_id: 1)
Product.create(price: 219, description: "Tatuaż tribal na łopatkę.", created_at: "2015-08-12 09:32:44", updated_at: "2015-08-14 00:50:52", avatar_file_name: "tribal_2.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 105055, avatar_updated_at: "2015-08-14 00:50:52", name: "Tribal 2", tatuer_id: 1)
p '2 Products created.'

User.create(email: "example@user.com", password: "12345678", password_confirmation: "12345678")
p 'User created.'

Review.create(content: "I want that one ! :)", vote: 5, product_id: 1, created_at: "2015-08-20 13:59:01", updated_at: "2015-08-20 13:59:01", user_id: 1)
p 'Review created.'