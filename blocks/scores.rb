scores = [83, 71, 92, 64, 98, 87, 75, 69]

scores_doubled = scores.map { |s| s*2 }
p scores_doubled

high_score = scores.reduce(:+)
p high_score

evens, odds = scores.partition { |s| s.even? }
puts "evens"
puts evens
puts "odds"
puts odds
