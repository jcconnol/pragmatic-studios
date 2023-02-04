cards = ["Jack", "Queen", "King", "Ace", "Joker"]
# cards = cards.shuffle
cards.reverse_each do |card|
    puts "#{card.upcase} - #{card.length}"
end


scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |key, value|
    puts "#{key} scored a #{value}!"
end




