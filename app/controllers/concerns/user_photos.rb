module UserPhotos
  extend ActiveSupport::Concern

def pick_photo
 photos = [
"https://i.pinimg.com/236x/d5/3a/6a/d53a6a91fd21981740621309cceceec8--beautiful-animals.jpg",
"https://vipstory.net/wp-content/uploads/2019/11/4-4-21.jpg",
"https://images3.alphacoders.com/995/thumb-350-995272.jpg",
"https://im.jigsawplanet.com/?rc=img&pid=38d99a10fffe&size=160",
"https://im.jigsawplanet.com/?rc=img&pid=26e0ea17453e&size=160"
]
photos.sample
end

 def pick_cover
  cover = [
    "https://miro.medium.com/max/980/1*LF8LBFD7HF33rffAxBOCqA.jpeg",
    "https://pics.astrologymemes.com/single-taken-i-have-a-small-dick-bad-social-skills-2899765.png",
    "https://million-wallpapers.ru/wallpapers/3/60/9711581260296049905/gorod-san-francisko-noch-ogni-most-san-francisco.jpg",
    "https://tv.bectero.com/wp-content/uploads/2018/04/thumb_002-93.jpg",
    "https://yobte.ru/uploads/posts/2019-11/krasotki-na-pljazhe-71-foto-47.jpg",
    "https://avatars.mds.yandex.net/get-zen_doc/987771/pub_5c9af8d95c89e200b37af5f3_5c9b49965e29d000b387264f/scale_1200",
    "https://kuda-mo.ru/uploads/490cef8b1e9a173ce74a326a4595d5d2.jpeg",
    "https://www.culture.ru/storage/images/a2026524f5a4b54aa3674083812ae3f7/536588ab2d17143d9498a0247920aaa0.jpg",
    "https://kto-chto-gde.ru/wp-content/uploads/2016/09/nastol.com_.ua-113628.jpg"
  ]
 
    cover.sample
 end
 
end


