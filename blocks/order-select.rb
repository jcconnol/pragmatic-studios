class Order
  attr_reader :email, :total, :state, :status

  def initialize(email, total, state, status=:pending)
    @email = email
    @total = total
    @status = status
    @state = state
  end

  def to_s
    "#{email}: #{total}"
  end
end

orders = []

5.times do |number|
  orders << Order.new("whatever+#{number}@something.com", number, number.even?)
end

# puts "Big orders:"

# big_orders = orders.select { |o| o.total >= 3 }

# puts big_orders

# puts "---"
# puts orders


#reject method
small_orders = orders.reject { |o| o.total >= 3 }

puts small_orders

puts "---"
puts orders


# enumerable methods
puts orders.any? { |o| o.status == :pending}