# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 1000.times do |i|
#   Article.create({content: "Article numéro #{i}"})
#   puts "Creating article #{i}"
# end

5.times do |i|
  puts "Creating Chapter #{i}"
  chapter = Chapter.create({
    title: "Chapitre numéro #{i}",
    published_at: Time.now
  })

  10.times do |j|
    #Création d'un article
    chapter.articles.create({content: "Contenu de l'article #{j} pour le chapitre #{i}"})
  end
end
