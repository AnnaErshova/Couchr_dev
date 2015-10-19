Workout.create(name: '3min jog', start_time: DateTime.new(2015,10,13), description: 'run nonstop please', user_id: 1)
Workout.create(name: '3min jog', start_time: DateTime.new(2015,10,15), description: 'run nonstop please', user_id: 1)
Workout.create(name: '3min jog', start_time: DateTime.new(2015,10,17), description: 'run nonstop please', user_id: 1)
Workout.create(name: '3min jog', start_time: DateTime.new(2015,10,17), description: 'run nonstop please', user_id: 2)
Race.create(name: 'Franklin Park Turkey Trot', latitude: 42.303815, longitude: -71.094346, length: '5k', user_id: 1)
Race.create(name: 'NYC Marathon', latitude: 40.783300, longitude: -73.9667, length: '26.2mi', user_id: 1)
User.create(email: 'anna.ershova@gmail.com', password: 'password', password_confirmation: 'password' , role: 1, name: 'Anna Ershova')
User.create(email: 'sam@samjackson.org', password: 'password', password_confirmation: 'password' , role: 1, name: 'Sam Jackson')

  