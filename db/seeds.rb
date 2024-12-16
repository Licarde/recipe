# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Recipe.create([
  {
    title: "チキンカレー",
    making_time: "45分",
    serves: "4人",
    ingredients: "玉ねぎ,肉,スパイス",
    cost: 1000
  },
  {
    title: "オムライス",
    making_time: "30分",
    serves: "2人",
    ingredients: "玉ねぎ,トマト,スパイス,水",
    cost: 700
  }
])