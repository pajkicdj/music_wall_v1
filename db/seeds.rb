require 'faker'

# Create main user
user = User.create!(
  name: 'Djina',
  email: 'djina@example.com',
  password: 'password'
)

user2 = User.create!(
  name: 'Adam',
  email: 'adam@example.com',
  password: 'password')

10.times do
  title = Faker::Name.title
  artist = Faker::Name.name
  slug = Faker::Internet.slug("#{artist} #{title}")
  user.musics.create!(
    song_title: title,
    author: artist,
    url: Faker::Internet.url('example.com', "/#{slug}")
  )
end

10.times do
  title = Faker::Name.title
  artist = Faker::Name.name
  slug = Faker::Internet.slug("#{artist} #{title}")
  user2.musics.create!(
    song_title: title,
    author: artist,
    url: Faker::Internet.url('example.com', "/#{slug}")
  )
end
