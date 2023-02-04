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

  #recursively adds numbers
  total = orders.reduce(0) { |sum, order| sum + order.total }
  puts total
#   new_total = orders.reduce(:+) #does same thing as above but only for integers
#   puts new_total

