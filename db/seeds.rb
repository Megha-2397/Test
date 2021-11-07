# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'testuser@gmail.com', password: 'user@123', first_name: 'Test', last_name: 'user')
User.create(email: 'testuser1@gmail.com', password: 'user@123', first_name: 'User', last_name: 'userone')
User.create(email: 'testuser2@gmail.com', password: 'user@123', first_name: 'New', last_name: 'usertwo')
category = ["new Category", "Test category"]

category.each do |c|
  Category.create(name: c)
end

Post.create(title: 'Test Post', user_id: 1, category_id: 1, post_date: '2021-11-23', description: 'This is test post description')
Post.create(title: 'New Post', user_id: 1, category_id: 2, post_date: '2021-11-23', description: 'This is new post description')
Post.create(title: 'Test Post One', user_id: 2, category_id: 2, post_date: '2021-11-23', description: 'This is test post one description')
Post.create(title: 'Post by new user', user_id: 2, category_id: 1, post_date: '2021-11-23', description: 'This is test post by new user description')
Post.create(title: 'Test one Post', user_id: 1, category_id: 1, post_date: '2021-11-23', description: 'This is test one post description')


PostComment.create(comment: 'Test Post comment', user_id: 2, post_id: 2)
PostComment.create(comment: 'Test Post comment one', user_id: 3, post_id: 2)
PostComment.create(comment: 'First comment one', user_id: 1, post_id: 3)