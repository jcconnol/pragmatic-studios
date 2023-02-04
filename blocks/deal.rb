def deal
    faces = ["Jack", "Queen", "King", "Ace"]
    suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
    random_face = faces.sample
    random_suit = suits.sample
    # call the block here
    puts yield random_face, random_suit if block_given?

end

deal { |face, suit| face.length + suit.length}

deal 
