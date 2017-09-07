# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Post.delete_all
Comment.delete_all
Rating.delete_all

user1=User.new

user1=User.create(name:"Zahid",phone_num:"1234",email:"123@gmail.com",skype:"skyper",whatsapp:"whataspper",facetime:"facetimer")
post1=Post.create(title:"help",topic:"treelooooo",content:"help me now",user:user1)
Comment.create(title:"I can help",content:"THIS IS THE CONTENT",user:user1,post:post1)
Rating.create(title:"Rating 1",comment:"well done shepppy",rating:3,user:user1)

# user2=User.create(name:"Mike",phone_num:"1234",email:"123@gmail.com",skype:"skyper",whatsapp:"whataspper",facetime:"facetimer")
# post2=Post.create(title:"help me with building",topic:"bob the builder",content:"help me now",user:user2)
# Comment.create(title:"I can help",content:"THIS IS THE CONTENT",user:user2,post:post2)
# Rating.create(title:"Rating 2",comment:"well done shepppy",rating:3,user:user2)

# user3=User.create(name:"Jackie",phone_num:"1234",email:"123@gmail.com",skype:"skyper",whatsapp:"whataspper",facetime:"facetimer", password_digest:"$2a$10$2Kz2CrxdT55nrtIZQ4sBZu73sPV6nGUhSslekRUO.wS...")
# post3=Post.create(title:"THIS IS TESTER",topic:"TESTER",content:"TESTESESSETSTE me now",user:user3)
# Comment.create(title:"COMMENT TESTER",content:"THIS IS THE COMMENT TESTER",user:user3,post:post3)
# Rating.create(title:"Rating 3",comment:"well done shepppy",rating:5,user:user3)


# puts "created #{User.count} users"
# puts "created #{Comment.count} comments"
# puts "created #{Post.count} posts"



# User.delete_all
# Post.delete_all
# Comment.delete_all
# Rating.delete_all

# User.create([
#   {name: "Zahid Akram",phone_num:"asdf",email:"asd",skype:"1234",whatsapp:"123", facetime: "ZahidAkram@gmail.com", password_digest: ""},
#   {name: "Robin r",phone_num:"asdf",email:"asd",skype:"1234",whatsapp:"123", facetime: "robin1@gmail.com", password_digest: ""},

# ])

# Post.create([
#   {title: "SHIT SHIT SHIT", topic: "sadgfjsakgf", content: "rails forms errors life", user_id: 1},
#   {title: "SHIT SHIT SHIT", topic: "sadgfjsakgf", content: "rails forms errors life", user_id: 2},

# ])

# Comment.create([
#   {title:"a",content: "this robot is ugly", post_id: 1, user_id: 1},
#   {title:"b",content: "Hey now", post_id: 1, user_id: 1},
#   ])


# puts "created #{User.count} users"
# puts "created #{Comment.count} comments"
# puts "created #{Post.count} posts"