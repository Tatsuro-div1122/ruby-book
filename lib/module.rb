module Loggable

  private


  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  def title
    log 'title is called.'
    'A great movie'
  end

end

class User
  include Loggable

  def name
    log 'name is called'
    'Alice'
  end
end

product = Product.new
puts product.title

user = User.new
puts user.name

puts product.log'public?'