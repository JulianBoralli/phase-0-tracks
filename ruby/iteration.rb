# writing a method

def sum

	puts "Let's add numbers!"
	yield(2, 3)
end
	
sum { | num1, num2 |puts "  #{num1} + #{num2} = #{ num1+num2 }" }


#declare array

 cities = ["new york", "tokyo", "sydney", "london"]

#original array
p cities

cities.each do |city|
	puts " #{city} is my favorite city!"
end

cities.map! do |city|
city.capitalize

end
p cities


#declare hash

sports = {
winter: "ski",
spring: "run",
summer: "surf",
fall: "bike"
}

#original hash
p sports

sports.each do | season, sport|

    puts " We #{sport} in #{season} "
 end

#1 for array 
array = (1..10).to_a
p array 

array.delete_if {|n| n.odd? }
p array

# 1 for hash
sports.delete_if {|key, value| key == :summer}
p sports

#2 for array 

alphabet = ("a".."z").to_a
p alphabet

alphabet.keep_if {|letter| letter.match(/[abc]/)}
p alphabet

#2 for hash 
sports.keep_if {|key, value| value.length >3}
p sports

#3 for array

new_array = (1..80).to_a
p new_array

new_array.select! {|y| y>50}
p new_array

#3 for hash

new_hash = {

one: 1,
two: 2,
three: 3,
four: 4
}
p new_hash

new_hash.select! {|key, value| value.even? }

p new_hash

#4 for array

random_array = [3, 8, 22, 4, 65, 100, 2, 0, 11,83]
p random_array

p random_array.drop_while {|i| i< 10}

#4 for hash
# No specific method fits the job for hashes.