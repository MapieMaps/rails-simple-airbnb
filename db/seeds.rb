# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Superbe appartement au coeur de Paris (2e)',
  address: '46 Rue Montmartre, 75002 Paris',
  description: 'Cet appartement cosy est situé au coeur de Paris, dans le chic et animé quartier Montorgueil, à 10min à pieds du Louvre, du jardin des Tuileries, idéal pour un séjour parisien en amoureux ! :)',
  price_per_night: 95,
  number_of_guests: 2
)

Flat.create!(
  name: 'Loving Madrid Gran Vía. En el centro!',
  address: 'Calle del Prado, 6-14, 28014 Madrid, Espagne',
  description: 'En pleno centro de Madrid, pero muy silencioso. Recién reformado y decorado Situado a 100m de la Gran Vía, donde están todos los cines, teatros y comercios y muy cerca de la Puerta del Sol.',
  price_per_night: 112,
  number_of_guests: 3
)

Flat.create!(
  name: 'Appartement de charme - Quartier Sainte Catherine',
  address: 'Rue Sainte-Catherine 15, 1000 Bruxelles, Belgique',
  description: 'Appartement de charme dans le centre ville de Bruxelles - Quartier Sainte Catherine - Protocole de nettoyage Covid-19 renforcé',
  price_per_night: 92,
  number_of_guests: 4
)

puts "Finished!"
