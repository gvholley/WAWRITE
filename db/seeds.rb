puts 'Cleaning database...'
Product.destroy_all if Rails.env.development?
Category.destroy_all

puts 'Creating categories...'
diary = Category.create!(name: 'Diary')
pen = Category.create!(name: 'Pen')
tape = Category.create!(name: 'Tape')
list = ['Diary', 'Pen', 'Tape']
list.each do |tag|
  ActsAsTaggableOn::Tag.new(:name => tag).save
end

puts 'Creating stationery...'
hb = Product.create!(price_cents: 3499, sku: 'hobonichi', name: 'Hobonichi Techo', category: diary, photo_url: 'https://www.1101.com/store/techo/2019/images/all_about/planner_about04/zoom_01.jpg')
hb.tag_list.add("Diary")
hb.save
us = Product.create!(price_cents: 499, sku: 'stylefit', name: 'Uni Style Fit', category: pen, photo_url: 'https://images-na.ssl-images-amazon.com/images/I/91pvFXzZclL._AC_SL1500_.jpg')
us.tag_list.add("Pen")
us.save
ap = Product.create!(price_cents: 1999, sku: 'apica', name: 'Apica Three Year Diary', category: diary, photo_url: 'https://i.imgur.com/YIKiPXQ.jpg')
ap.tag_list.add("Diary")
ap.save
bnd = Product.create!(price_cents: 299, sku: 'bande', name: 'Bande Masking Tape', category: tape, photo_url: 'https://images-na.ssl-images-amazon.com/images/I/61gkkdsMaIL._AC_SL1500_.jpg')
bnd.tag_list.add("Tape")
bnd.save
plt = Product.create!(price_cents: 999, sku: 'pilot', name: 'Pilot Vanishing Point Fountain Pen', category: pen, photo_url: 'https://themartinj.com/wp-content/uploads/2017/03/pen4.jpg')
plt.tag_list.add("Pen")
plt.save
mtc = Product.create!(price_cents: 199, sku: 'mt', name: 'MT Casa', category: tape, photo_url: 'https://www.masking-tape.jp/en/common/images/lineup/special/casa/mtcasashade/sizemainimg2.jpg')
mtc.tag_list.add("Tape")
mtc.save
puts 'Finished!'
