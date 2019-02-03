require 'pry'

require_relative 'artist'
require_relative 'song'
require_relative 'genre'
require_relative 'patient'
require_relative 'doctor'
require_relative 'appointment'

michael = Artist.new("Michael")
jay_z = Artist.new("Jay Z")
alicia_keys = Artist.new("Alice Keys")
lemmy = Artist.new("Lemmy")


rap = Genre.new("Rap")
rock = Genre.new("Rock")
r_and_b = Genre.new("R & B")



coffee_at_night = Song.new("Coffee at night", michael, rock)

black_cats_of_capital_hill = Song.new("Black cats of capital hill", michael, rock)

another_door = Song.new("Another Door", michael, rock)

ace_of_spades = Song.new("Ace of Spades", lemmy, rock)

the_game = Song.new("The Game", lemmy, rock)

pray_for_forgiveness = Song.new("Pray for forgiveness", alicia_keys, r_and_b)

she_dont_care = Song.new("She dont care", alicia_keys, rap)

nintynine = Song.new("Ninty Nine", jay_z, rap)

ottis = Song.new("Ottis", jay_z, rap)



tony = Patient.new("Tony")
mary = Patient.new("Mary")
shannon = Patient.new("Shannon")

philip = Doctor.new("Philip")
katie = Doctor.new("Katie")


feb_02_2019 = Appointment.new("02-03-2019", tony, katie)

jun_06_2018 = Appointment.new("06-06-2018", mary, philip)











pry.start
