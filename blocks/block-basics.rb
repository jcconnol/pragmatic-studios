3.times do |number|
  puts number
end

3.times { |number| puts number }

puts "upto"
1.upto(3) { |number| puts number }




1.upto(5) {
  |number|
  if number < 3 or number > 4
    puts "#{number} situp"
    puts "#{number} pushup"
    puts "#{number} chinup"
    puts "\n"
  end

  if number == 3
    puts "... and so on\n\n"
  end
}


1.upto(5) do
  |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

1.upto(10) do |count|
  puts "#{count} alligator"
end

1.upto(10) { |c|  puts "#{c} alligator" }

1.step(10, 2) do
|number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end