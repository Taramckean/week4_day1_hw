class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play(hand1, hand2)
    choices = ["Rock", "Paper", "Scissors"]
    if hand1 == hand2
      return "Draw"
    elsif hand1 == "Paper" && hand2 == "Rock"
      return "#{hand1} wins!"
    elsif hand1 == "Rock" && hand2 == "Scissors"
      return "#{hand1} wins!"
    elsif hand1 == "Scissors" && hand2 == "Paper"
      return "#{hand1} wins!"
    elsif !choices.include?(hand1) || !choices.include?(hand2)
      return "NOOOOOOO wrong"
    else "#{hand2} wins!"
    end
  end


  end
