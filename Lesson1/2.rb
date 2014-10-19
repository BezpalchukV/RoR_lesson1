birthDate = Time.local(2000, "Oct", 10)
currentDate = Time.now

years = currentDate.year - birthDate.year
seconds = (currentDate - birthDate).to_i

puts "I have lived #{years} years or #{seconds/3600/24} days or #{seconds/3600} hours or #{seconds/60} minutes or #{seconds} seconds"