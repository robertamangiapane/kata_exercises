def score_hand(cards)
  score = 0
  axes = cards.count("A")
  cards.each do |s|
    if s == "J" || s == "Q" || s == "K"
      s = 10
    end
    score+= s.to_i
  end

  if score >= 21 || axes > 2
    return score += axes
  end
  if axes == 1
    score + 11 > 21? score += 1 : score += 11
  elsif axes == 2
    score +  11 >= 21? score += 2 : score += 12
  end
  score
end


puts score_hand(['K','J','Q'])
puts score_hand(["A", "K", "A"])
puts score_hand(['A','1'])
puts score_hand(['A','3'])
puts score_hand(['A','2','A','9','9'])