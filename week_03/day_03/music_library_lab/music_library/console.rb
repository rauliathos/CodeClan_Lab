require("pry")
require_relative('./models/artist')
require_relative('./models/album')

Album.delete_all()
Artist.delete_all()
# Customer.delete_all()

artist1= Artist.new({'name' => 'janet'})

artist1.save()

album1 = Album.new({
  'title' => 'title1',
  'genre' => 'genre1',
  'artist_id' => artist1.id

  })

  album2 = Album.new({
    'title' => 'title2',
    'genre' => 'genre2',
    'artist_id' => artist1.id

    })

album1.save()
album2.save()

# album1.title = 'dfgdgdf'
# album1.update
# album1.delete
# artist1.name = 'mash'
# artist1.update
# artist1.delete


# customer1 = Customer.new({'name' => 'Janet'})
# customer1.save()
#
# customer2 = Customer.new({'name' => 'jeff'})
# customer2.save()
# order1 = PizzaOrder.new({
#   'topping' => 'pepperoni',
#   'quantity' => '2',
#   'customer_id' => customer1.id
#   })
#
#   order2 = PizzaOrder.new({
#     'topping' => 'any',
#     'quantity' => '2',
#     'customer_id' => customer1.id
#     })
#
#   order1.save
#   order2.save

binding.pry
nil
