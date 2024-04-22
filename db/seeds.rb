# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all

User.create( # 1
    name: "Juan",
    email: "j23@gmail.com",
    password: "123456"
)
User.create( # 2
    name: "Diego",
    email: "diego2806@gmail.com",
    password: "Diego!"
)
User.create( # 3
    name: "Comedy",
    email: "Comedy12@gmail.com",
    password: "Comedia123"
)
User.create( # 4
    name: "Mario",
    email: "mario.mario@mushroom.com",
    password: "M4R10STAR"
)
User.create( # 5
    name: "Patricio",
    email: "bobesponja2@gmail.com",
    password: "laEstrellaDeFondoDeBikini"
)

tag1 = Tag.create( # 1
    name: "Entertaining"
)
tag2 = Tag.create( # 2
    name: "News"
)
tag3 = Tag.create( # 3
    name: "Videogames"
)
tag4 = Tag.create( # 4
    name: "Memes"
)
tag5 = Tag.create( # 5
    name: "Blog"
)

post1 = Post.create( # 1
    title: "Mi primer post",
    content: "No se como funciona esto...",
    user_id: 1,
    published_at: "2015-08-02 15:12:58"
)
post1.tags << tag5
post2 = Post.create( # 2
    title: "MEME",
    content: "image14233hkrif_e32.jpg",
    user_id: 3,
    published_at: "2018-01-15 22:05:15",
    answers_count: 156,
    likes_count: 8452
)
post2.tags << tag1
post2.tags << tag4
post3 = Post.create( # 3
    title: "Happy MAR 10 DAY",
    content: "It's MAR 10, MARIO DAY!!",
    user_id: 4,
    published_at: "2017-03-10 09:00:00",
    answers_count: 456,
    likes_count: 7880
)
post3.tags << tag1
post3.tags << tag3
post4 = Post.create( # 4
    title: "Hola soy Diego",
    content: "Hola soy Diego...",
    user_id: 2,
    published_at: "2017-04-26 20:35:45",
    answers_count: 2,
    likes_count: 2
)
post4.tags << tag5
post5 = Post.create( # 5
    title: "Programmer joke",
    content: "Do you know why they say Python is a high level language? Because its above C!",
    user_id: 3,
    published_at: "2016-07-15 12:45:10",
    answers_count: 87,
    likes_count: 156
)
post5.tags << tag1
post5.tags << tag4
post6 = Post.create( # 6
    title: "Bob esponja tengo algo para ti...",
    content:"!#$!",
    user_id: 5,
    published_at: "2017-12-04 10:45:44",
    answers_count: 23,
    likes_count: 985
)
post6.tags << tag1
post7 = Post.create( # 7
    title: "Nueva IA para hacer tareas",
    content: "Se ha lanzando una nueva IA gratuita para estudiantes, ideales para hacer tareas. Pueden probarla desde 2024 en http://...",
    user_id: 2,
    published_at: "2023-11-24 13:00:45",
    answers_count: 77,
    likes_count: 422
)
post7.tags << tag2
post7.tags << tag5
post8 = Post.create( # 8
    title: "ADIOS",
    content: "im321_423hfjj283j.png",
    user_id: 3,
    published_at: "2020-04-01 18:02:12",
    answers_count: 118,
    likes_count: 155
)
post8.tags << tag5
post9 = post8.child_posts.create( # 9
    title: "Era Broma XDDD",
    content: "Happy April Fools",
    user_id: 1,
    published_at: "2020-04-02 00:12:08",
    answers_count: 111,
    likes_count: 78
)
post9.tags << tag4
post9.tags << tag5
post10 = post3.child_posts.create( # 10
    title: "New MARIO GAME Releases TODAY",
    content: "Come to experience a new adventure with Mario and his friends with the new Super Mario Copiapo Videogame!",
    user_id: 4,
    published_at: "2019-11-12 11:12:00",
    answers_count: 323,
    likes_count: 5156
)
post10.tags << tag2
post10.tags << tag3
