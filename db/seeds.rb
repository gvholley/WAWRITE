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
hb = Product.create!(price_cents: 3499, sku: 'hobonichi', name: 'Hobonichi Techo', category: diary, description: 'This original form of the Hobonichi Techo has been loved by many users since its introduction in 2002. Its daily pages offer plenty of space to fill despite the book’s compact A6 size. The graph paper offers an open layout for you to neatly lay out writings, clippings, and drawings.
The daily quotes (Japanese) also provide users with interesting reading material. The book is designed to be paired with a cover of your choice.', photo_url: 'https://www.1101.com/store/techo/2019/images/all_about/planner_about04/zoom_01.jpg')
hb.tag_list.add("Diary")
hb.save
us = Product.create!(price_cents: 499, sku: 'stylefit', name: 'Uni Style Fit', category: pen, description: 'The Uni Style Fit pen system allows you to select exactly the right components for you and assemble them into a pen that holds multiple cartridges at once or a sleek, space-saving single-cartridge pen. Uni-ball has reworked their most popular gel, ballpoint, and mechanical pencil technologies into refill components for the Uni Style Fit. The refills come in sixteen dazzling colors and five tip sizes to suit every use from writing in book margins, to color-coding notes, to making bold, smooth signatures. Mix and match your favorites with any of four multi pen bodies and two single pen bodies to design a pen or pen set that perfectly fits your life.', photo_url: 'https://images-na.ssl-images-amazon.com/images/I/91pvFXzZclL._AC_SL1500_.jpg')
us.tag_list.add("Pen")
us.save
ap = Product.create!(price_cents: 1999, sku: 'apica', name: 'Apica Three Year Diary', category: diary, description: "With this clever diary, you can record the day's events and remember those of previous years at the same time. It features a separate page for each day of the year, and each page is divided into three sections for you to fill in on the same date over three successive years. You can write about events, musings, or even the weather. After you've used the diary for a full year, you can go back to the first page and read what was happening in your life on the same date a year ago as you make a new entry on the same page. An epilogue section at the end of the diary provides additional pages for you to fill in your thoughts as you reflect on all you've seen, done, and felt. The pages are undated, so you can start your diary on any day of the year.", photo_url: 'https://i.imgur.com/YIKiPXQ.jpg')
ap.tag_list.add("Diary")
ap.save
bnd = Product.create!(price_cents: 299, sku: 'bande', name: 'Bande Masking Tape', category: tape, description: "Bande is a stationary brand (started in 2016) by Nishikawa Communications established in 1906, excels in printing industry, information and communications technology. Bander currently have two main products, the washi tape and the brand new washi roll sticker where you can peel each part from the roll of tape just like a sticker. Animals, flower petals, leaves patterned sticker-like washi, you are free to use your imagination to mix and match those patterns for your journals or card making!", photo_url: 'https://images-na.ssl-images-amazon.com/images/I/61gkkdsMaIL._AC_SL1500_.jpg')
bnd.tag_list.add("Tape")
bnd.save
plt = Product.create!(price_cents: 999, sku: 'pilot', name: 'Pilot Vanishing Point Fountain Pen', category: pen, description: "This stealthy Pilot Vanishing Point fountain pen has a matte black barrel with black accents. This fountain pen comes with a retractable black ionized 18k gold nib - just click to expose or retract the nib. A hidden trap door helps keep the nib from drying out when not in use. A Pilot CON-40 converter is included with this pen, as well as a Pilot ink cartridge. Each Vanishing Point fountain pen is beautifully merchandised in a black gift box.

The Vanishing Point retractable fountain pen is a product rich in both history and performance. Its brilliant design and ingenious technology make it a pen for the new age. A larger size, durable metal body and attractive appointments make the Vanishing Point unmistakably unique.", photo_url: 'https://themartinj.com/wp-content/uploads/2017/03/pen4.jpg')
plt.tag_list.add("Pen")
plt.save
mtc = Product.create!(price_cents: 199, sku: 'mt', name: 'MT Casa', category: tape, description: "Wall colors can be change freely
as it is easy to paste and remove.
As if you change your clothes,
you can change the atmosphere of your room.
mt is a lot easier and simpler than changing your room
with paint and wall paper.", photo_url: 'https://www.masking-tape.jp/en/common/images/lineup/special/casa/mtcasashade/sizemainimg2.jpg')
mtc.tag_list.add("Tape")
mtc.save
puts 'Finished!'
