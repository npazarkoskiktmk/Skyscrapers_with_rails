 require 'faker'

 AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

 puts "Starting seeds..."

    User.create!(
        username: "testuser",
        first_name: "User",
        last_name: "User",
        email: "user@test.com",
        password: "password",
        password_confirmation: "password"
    )

puts "Creating books and users..."
10.times do |item|
    Book.create!(
        title: Faker::Book.title,
        description: Faker::Book.genre,
        author: Faker::Book.author,
        year: "202#{item}".to_i
    )
    User.create!(
        username: Faker::Internet.username(specifier: 5..8),
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name ,
        email: Faker::Internet.email,
        password: "password",
        password_confirmation: "password"
    )
end

puts "Creating feedback..."
30.times do
    Feedback.create!(
        comment: Faker::Lorem.sentence(word_count: 6),
        book_id: Faker::Number.within(range: 1..10),
        user_id: Faker::Number.within(range: 1..11)
    )
end

puts "Seeding completed!"
