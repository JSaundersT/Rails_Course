dial_book = {
  "New York" => "212",
  "New Brunswick" => "732",
  "Edison" => "908",
  "Plainsboro" => "609",
  "San Francisco" => "301",
  "Miami" => "305",
  "Palo Alto" => "650",
  "Evanston" => "847",
  "Orlando" => "407",
  "Lancaster" => "717"
}

# Get city names from the hash
def get_city_names(city)
  city.each_key { |city| puts city.capitalize }
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts "Do you want to look up an area code based on a city name? (Y/N)"
  answer = gets.chomp.capitalize
  break if answer != "Y"
  puts "Which city do you want to lookup the areacode for?"
  get_city_names(dial_book)
  puts "Enter your selection:"
  chosen_city = gets.chomp.capitalize

  if dial_book.include?(chosen_city)
    puts "The area code for #{chosen_city} is: #{get_area_code(dial_book, chosen_city)} "
  else
    puts "You entered an invalid city."
  end
end

get_area_code(dial_book)
