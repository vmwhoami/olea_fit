# frozen_string_literal: true

@cover_image = [
  'https://avatanplus.com/files/resources/original/5688ea3e22fe315206d302bf.jpg',
  'https://sun9-19.userapi.com/c858016/v858016132/6cf41/HlXYXDCmVb8.jpg',
  'https://cdnimg.rg.ru/img/content/155/39/49/55.jpg',
  'https://mir-s3-cdn-cf.behance.net/project_modules/1400/a0efcc57945383.59e99b190b29d.png',
  'https://forum.awd.ru/gallery/images/upload/b96/fd6/b96fd6fa2f1bf0adebb177c469a7fe2f.jpg',
  'https://voyage-maximum.ru/workdir/items_photos/zanzibar-tury_1.jpg',
  'https://pochemu4ka.ru/_pu/124/26005531.jpg',
  'https://million-wallpapers.ru/wallpapers/3/60/9711581260296049905/gorod-san-francisko-noch-ogni-most-san-francisco.jpg',
  'https://tv.bectero.com/wp-content/uploads/2018/04/thumb_002-93.jpg',
  'https://yobte.ru/uploads/posts/2019-11/krasotki-na-pljazhe-71-foto-47.jpg',
  'https://avatars.mds.yandex.net/get-zen_doc/987771/pub_5c9af8d95c89e200b37af5f3_5c9b49965e29d000b387264f/scale_1200',
  'https://kuda-mo.ru/uploads/490cef8b1e9a173ce74a326a4595d5d2.jpeg',
  'https://www.culture.ru/storage/images/a2026524f5a4b54aa3674083812ae3f7/536588ab2d17143d9498a0247920aaa0.jpg',
  'https://kto-chto-gde.ru/wp-content/uploads/2016/09/nastol.com_.ua-113628.jpg'
]

@photos = [
  'https://img2.goodfon.ru/wallpaper/nbig/7/75/devushka-portret-model-glaza-anastasiia-shcheglova-anastasia.jpg',
  'https://i.pinimg.com/736x/86/08/70/860870066df05a7a29bcb5bb9ea2e9a7.jpg',
  'https://i.pinimg.com/originals/14/9f/e5/149fe58945ae3b9d83220d47ab45c21b.jpg',
  'https://get.wallhere.com/photo/face-women-model-portrait-depth-of-field-long-hair-photography-singer-black-hair-hair-nose-Person-skin-head-supermodel-girl-beauty-eye-woman-lady-blond-hairstyle-portrait-photography-photo-shoot-brown-hair-eyebrow-human-body-organ-close-up-6064.jpg',
  'https://img2.goodfon.ru/original/1920x1080/4/86/girl-model-blonde-face-blue.jpg',
  'https://img2.goodfon.ru/wallpaper/nbig/7/ed/devushka-blondinka-christina-portret-vzgliad-fotograf-dennis.jpg',
  'https://get.wallhere.com/photo/women-blonde-portrait-blue-eyes-simple-background-Victoria-Pichkurova-1170788.jpg',
  'https://get.wallhere.com/photo/face-women-model-portrait-blonde-dyed-hair-simple-background-long-hair-photography-singer-brown-eyes-Lods-Franck-sweater-fashion-Latinas-hair-no-bra-Person-supermodel-girl-beauty-eye-woman-lady-blond-hairstyle-portrait-photography-photo-shoot-brown-hair-art-model-Leana-Ant-571345.jpg'

]

User.create(username: 'olea', fullname: 'Olga Pirvu',
            coverimage: 'https://million-wallpapers.ru/wallpapers/3/60/9711581260296049905/gorod-san-francisko-noch-ogni-most-san-francisco.jpg',
            photo: @photos.sample)
User.create(username: 'vitalie', fullname: 'Vitalie Melnic',

            coverimage: 'https://tv.bectero.com/wp-content/uploads/2018/04/thumb_002-93.jpg',
            photo: @photos.sample)
User.create(username: 'adam', fullname: 'Adam Melnic',

            coverimage: 'https://yandex.ru/images/_crpd/5zz1l1W64/486740a9F3l5/8wtK-q0p6jEiM4X5KUrMan7BZTWpGhxCH5vp8GXYrZc083rgYBXweXcMmI1yCJTzQY6n1yt75FI3tpf2CXNYLcOvrkrZae5hc1FESbyOvQ67wdDgfQvJp9vaGZBhnBwCUVWeUaARFcxx7Bjtc_pmUXBp1GBdHPNlIEJydtwWafwnju35SEqK0fKw0fq4CXka7ZHHhmpezNNM7GjhFk0u1hbw6cHwUCctMQvti3bKBSJzC7UiPpyiJpKxkReepHhJ5dwsa63Jq-KyE6EJy6sYWVyRR7aYzqxyzf9porfcvCYEMtpjo1I1jTD7nvnVu-cww2jnAr0NYWbxIINlHyRJOOe9TIv9K2uxwmMzm4gpinlPQyQnGszcUy1_qND17D-VtCHYgQNBdC0hmK7qNgqVkCMateA-TVH3ouNjBJ72yir3nQ7ILtt4YqHB4ch5uzo5_cGlBwhN_YLPviiCJ5ze1ORRmmLTQGY8gCv_u9TbR0IBO-WinxzxBJJDk-cux6spt9-Mi86pWGJAQuJ4WApqy82TVccZDN-Cfg9Zo1fN7zYWQxmDAhB1jXKLjwiEGRbjEBnnUo2_QBdw8kHEjwe6K_X9Ttk8u6gTcUGTmKs4qhiuoycXy5_sYR2ciOEE7Q8kF2KYcNAxNl1gmq6pVpvW8FA759B8DJBnAPByR1zlexhGHj2r7mjLoEPQ4wlpexm7jbH2FLnv3GA8zgiAdtyu9FZCyYOiQ-UuApt-mmQ5N-EA2SbjjL3jlxAzonTdNKg69f3ci__qiQAhc4FIe9laCvxxlBXITWwgz-8qwXTPXZV3gkpCg1NnLGJ7TTpG2DTxMutm0Pz-sSXjIQDW7mZbSIT9bLrvetjgoWEhOZk5qrt8oaR0afzOcey_WUIXn_7lpOP58dEzlbxBCJ0pddtVkyFrx-CcDxI1kDOgpn60eNpXrY0Yj9hZkrHic6rreRrpjIFmZ6rMfvJezrihA',
            photo: @photos.sample)
User.create(username: 'sergyo', fullname: 'Sergiu Bogdan',

            coverimage: 'https://www.vladtime.ru/uploads/posts/2017-06/1497268693_2004-maybach-62-11.jpg',
            photo: @photos.sample)
User.create(username: 'inna', fullname: 'Inna Bogdan',

            coverimage: 'https://wallbox.ru/wallpapers/main/201424/e5e41a1e3b6c539.jpg',
            photo: @photos.sample)
User.create(username: 'nikoli', fullname: 'Nikoli Bogdan',

            coverimage: 'https://www.culture.ru/storage/images/e4a2cddbe5b782ed2fe00ddb641bc6cb/9e76e3959c43b8e9023ed74c26ec7a00.jpeg',
            photo: @photos.sample)

10.times do |u|
  User.create!(
    username: "user_#{u}",
    fullname: "User Family_#{u}",
    coverimage: @cover_image.sample,
    photo: @photos.sample
  )
end

puts '-' * 100
puts '------------ Users created!!! -----------'
user = 0
9.times do |_o|
  user += 1
  Opinion.create!(
    author: User.find(user),
    text: "Because I'm just ... um .... I don't know. Why give an interview when you
  can leave a warning, you know?"
  )
end

9.times do |o|
  o += 1
  Opinion.create!(
    author: User.find(o),
    text: "Coronavirus is a joke!!!!
    You should care about your health not about coravirus
    "
  )
end
puts '-' * 100
puts '------------ Opinions Created!!! -----------'

8.times do |f|
  f += 1
  User.find(1).followings.create(followed_id: User.find(f).id)
end
a = 1
9.times do |f|
  f += 1
  a += 1
  User.find(a).followings.create(followed_id: User.find(2).id)
end

puts '-' * 100
puts '------------ Followings Created!!! -----------'
