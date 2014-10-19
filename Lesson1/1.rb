puts 'Enter a number:'

n = gets.chomp
sum = n.split("").map{|x| x.to_i}.inject(:+)

puts "Sum digits of your number is #{sum}"