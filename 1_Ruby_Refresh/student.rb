class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First Name: #{@first_name}, Last Name: #{@last_name}, Username: #{@username}, Email Address: #{@email}"
  end

end

james = Student.new("James", "Saunders", "jtsgithub@gmail.com", "JSaundersT", "password1")
john = Student.new("John", "Smith", "johnsmith1@gmail.com", "JSmith69", "smith1990")

puts james
puts john
james.last_name = john.last_name
puts "James has been altered"
puts james
