10.times do |item|

    Book.create!(
        title: "Title nr. #{item}",
        description: "Description nr: #{item}",
        author: "Author #{item}",
        year: "202#{item}".to_i
    )

    user = User.new
    user.username= "User nr.: #{item}"
    user.first_name= "First name #{item}"
    user.last_name= "Last name #{item}"
    user.email = "user#{item}@test.com"
    user.password = "password#{item}"
    user.password_confirmation = "password#{item}"
    user.save!

    Feedback.create!(
        comment: "Comment #{item}",
        book_id: item+1,
        user_id: item+1
    )

end
