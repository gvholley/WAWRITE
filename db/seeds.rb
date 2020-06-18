puts 'Cleaning database...'
Product.destroy_all if Rails.env.development?
Category.destroy_all

puts 'Creating categories...'
diary = Category.create!(name: 'diary')
pen = Category.create!(name: 'pen')

puts 'Creating stationery...'
Product.create!(price_cents: 3499, sku: 'hobonichi', name: 'Hobonichi Techo', category: diary, photo_url: 'https://www.1101.com/store/techo/2020/images/all_about/original_index/img_01.jpg')
Product.create!(price_cents: 499, sku: 'stylefit', name: 'Uni Style Fit', category: pen, photo_url: 'https://images-na.ssl-images-amazon.com/images/I/91pvFXzZclL._AC_SL1500_.jpg')
Product.create!(price_cents: 1999, sku: 'apica', name: 'Apica Three Year Diary', category: diary, photo_url: 'https://image.rakuten.co.jp/horiman/cabinet/item-p3/d303.jpg')
puts 'Finished!'
