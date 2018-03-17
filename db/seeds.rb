# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Category.create!(name: 'ビール') if Rails.env.development?
Material.create!(name: '麦芽') if Rails.env.development?
Material.create!(name: 'ホップ') if Rails.env.development?
Material.create!(name: '水') if Rails.env.development?
ProducingArea.create!(name: '日本') if Rails.env.development?
Recipe.create!(name: 'ラガー') if Rails.env.development?
Recipe.create!(name: 'エール') if Rails.env.development?
Recipe.create!(name: 'ドライビール') if Rails.env.development?
Tag.create!(name: 'アサヒビール') if Rails.env.development?
Alcohol.create!(name: 'スーパードライ', degree: 5, producing_area_id: 1, category_id: 1, recipe_id: 1) if Rails.env.development?
AlcoholsMaterial.create!(alcohol_id: 1, material_id: 1) if Rails.env.development?
AlcoholsMaterial.create!(alcohol_id: 1, material_id: 2) if Rails.env.development?
AlcoholsMaterial.create!(alcohol_id: 1, material_id: 3) if Rails.env.development?
AlcoholsTag.create!(alcohol_id: 1, tag_id: 1) if Rails.env.development?
User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Favorite.create!(alcohol_id: 1, user_id: 1) if Rails.env.development?
History.create!(alcohol_id: 1, user_id: 1) if Rails.env.development?
Interest.create!(alcohol_id: 1, user_id: 1) if Rails.env.development?
Recommend.create!(alcohol_id: 1, user_id: 1) if Rails.env.development?
Review.create!(alcohol_id: 1, user_id: 1, evaluation: 5, sweetness: 0, acidity: 2, bitter: 3, richness: 3, kire: 4, fragrance: 4, title: '日本代表', content: '日本でビールといえばまずでてきます。') if Rails.env.development?
