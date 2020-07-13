class User
  attr_reader :first_name, :last_name, :age
  attr_accessor :first_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
  "#{first_name} #{last_name}"
  end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)



users.each do |user|
  puts "氏名: #{user.full_name}, 年齢: #{user.age}"
end

alice = User.new('Alice', 'Ruby', 20)
bob = User.new('Bob', 'Python', 30)

alice.first_name = "不思議の国のAlice"

puts alice.first_name