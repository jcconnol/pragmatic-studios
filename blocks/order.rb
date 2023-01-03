class Order
  attr_reader :email, :total

  def initialize(email, total)
    @email = email
    @total = total
  end

  def to_s
    "#{email}: #{total}"
  end
end

orders = []

5.times do |number|
  orders << Order.new("whatever+#{number}@something.com", number)
end

puts orders

orders.each { |order| puts order.email }

sum = 0
orders.each { |o| sum += o.total }

puts sum