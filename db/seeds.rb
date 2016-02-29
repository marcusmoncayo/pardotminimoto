# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bike.create([{ color: 'Blue' }, { color: 'Red' }])

User.create([{ username: 'Marcus', height: '5.3', weight: '135' },
             { username: 'Jeni', height: '5.4', weight: '130' },
             { username: 'Ben', height: '5.5', weight: '160' },
             { username: 'Brandon', height: '5.5', weight: '150' },
             { username: 'Tbone', height: '7.0', weight: '180' }
  ])

Lap.create([{ user_id: 1, bike_id: 1, formatted_time: 60.5 },
            { user_id: 1, bike_id: 1, formatted_time: 40.5 },
            { user_id: 2, bike_id: 1, formatted_time: 30.5 },
            { user_id: 2, bike_id: 1, formatted_time: 20.5 },
            { user_id: 3, bike_id: 1, formatted_time: 30.5 },
            { user_id: 3, bike_id: 1, formatted_time: 40.5 },
            { user_id: 4, bike_id: 1, formatted_time: 30.5 },
            { user_id: 4, bike_id: 1, formatted_time: 21.5 },
            { user_id: 5, bike_id: 1, formatted_time: 41.5 },
            { user_id: 5, bike_id: 1, formatted_time: 51.5 }
  ])
