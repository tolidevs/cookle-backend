# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






example code fromp previous project - using api data to create data in DB for places - we can use this for tags/categories
# places = GetPlaces.new("https://maps.googleapis.com/maps/api/place/textsearch/json?query=lunch+in+camden&key=AIzaSyBYm6fmd3--ZbWcY-IQRc02y4ZZ5vU6j20")
#   places = places.parse_json
  
#   places["results"].each do |restaurant|
#     Restaurant.create(name:restaurant["name"], area_id: camden.id, address: restaurant["formatted_address"], price_range: restaurant["price_level"], google_rating: restaurant["rating"], google_id: restaurant["place_id"])
#   end

diet data structure

"diet":[8 items
0:{7 items
"id":"406"
"shortDescription":"Ketogenic"
"longDescription":"Ketogenic"
"searchValue":"406^Ketogenic"
"type":"diet"
"ordinal":7
"localesAvailableIn":[...]5 items
}
1:{7 items
"id":"388"
"shortDescription":"Lacto vegetarian"
"longDescription":"Lacto vegetarian"
"searchValue":"388^Lacto vegetarian"
"type":"diet"
"ordinal":3
"localesAvailableIn":[...]1 item
}
2:{7 items
"id":"389"
"shortDescription":"Ovo vegetarian"
"longDescription":"Ovo vegetarian"
"searchValue":"389^Ovo vegetarian"
"type":"diet"
"ordinal":4
"localesAvailableIn":[...]1 item
}
3:{7 items
"id":"390"
"shortDescription":"Pescetarian"
"longDescription":"Pescetarian"
"searchValue":"390^Pescetarian"
"type":"diet"
"ordinal":5
"localesAvailableIn":[...]1 item
}
4:{7 items
"id":"386"
"shortDescription":"Vegan"
"longDescription":"Vegan"
"searchValue":"386^Vegan"
"type":"diet"
"ordinal":2
"localesAvailableIn":[...]1 item
}
5:{7 items
"id":"408"
"shortDescription":"Low FODMAP"
"longDescription":"Low FODMAP"
"searchValue":"408^Low FODMAP"
"type":"diet"
"ordinal":8
"localesAvailableIn":[...]5 items
}
6:{7 items
"id":"387"
"shortDescription":"Lacto-ovo vegetarian"
"longDescription":"Vegetarian"
"searchValue":"387^Lacto-ovo vegetarian"
"type":"diet"
"ordinal":1
"localesAvailableIn":[...]1 item
}
7:{7 items
"id":"403"
"shortDescription":"Paleo"
"longDescription":"Paleo"
"searchValue":"403^Paleo"
"type":"diet"
"ordinal":NULL
"localesAvailableIn":[...]1 item



allergies data structure

"allergy":[10 items
0:{7 items
"id":"393"
"shortDescription":"Gluten-Free"
"longDescription":"Gluten-Free"
"searchValue":"393^Gluten-Free"
"type":"allergy"
"ordinal":2
"localesAvailableIn":[...]1 item
}
1:{7 items
"id":"394"
"shortDescription":"Peanut-Free"
"longDescription":"Peanut-Free"
"searchValue":"394^Peanut-Free"
"type":"allergy"
"ordinal":3
"localesAvailableIn":[...]1 item
}
2:{7 items
"id":"398"
"shortDescription":"Seafood-Free"
"longDescription":"Seafood-Free"
"searchValue":"398^Seafood-Free"
"type":"allergy"
"ordinal":7
"localesAvailableIn":[...]1 item
}
3:{7 items
"id":"399"
"shortDescription":"Sesame-Free"
"longDescription":"Sesame-Free"
"searchValue":"399^Sesame-Free"
"type":"allergy"
"ordinal":8
"localesAvailableIn":[...]1 item
}
4:{7 items
"id":"400"
"shortDescription":"Soy-Free"
"longDescription":"Soy-Free"
"searchValue":"400^Soy-Free"
"type":"allergy"
"ordinal":9
"localesAvailableIn":[...]1 item
}
5:{7 items
"id":"396"
"shortDescription":"Dairy-Free"
"longDescription":"Dairy-Free"
"searchValue":"396^Dairy-Free"
"type":"allergy"
"ordinal":5
"localesAvailableIn":[...]1 item
}
6:{7 items
"id":"397"
"shortDescription":"Egg-Free"
"longDescription":"Egg-Free"
"searchValue":"397^Egg-Free"
"type":"allergy"
"ordinal":6
"localesAvailableIn":[...]1 item
}
7:{7 items
"id":"401"
"shortDescription":"Sulfite-Free"
"longDescription":"Sulfite-Free"
"searchValue":"401^Sulfite-Free"
"type":"allergy"
"ordinal":10
"localesAvailableIn":[...]1 item
}
8:{7 items
"id":"395"
"shortDescription":"Tree Nut-Free"
"longDescription":"Tree Nut-Free"
"searchValue":"395^Tree Nut-Free"
"type":"allergy"
"ordinal":4
"localesAvailableIn":[...]1 item
}
9:{7 items
"id":"392"
"shortDescription":"Wheat-Free"
"longDescription":"Wheat-Free"
"searchValue":"392^Wheat-Free"
"type":"allergy"
"ordinal":1
"localesAvailableIn":[...]1 item
}
]


all tags list headers:

"en-GB":{12 items
"user-diet":[...]8 items
"picker-units":{...}2 items
"user-allergy":[...]10 items
"email-subscription-preference":[...]7 items
"course":[...]14 items
"technique":[...]22 items
"display-units":[...]61 items
"policy-version":{...}2 items
"allergy":[...]10 items
"cuisine":[...]25 items
"country":250 items
[0 - 100]
[100 - 200]
[200 - 250]
"diet":[...]8 items