class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    choices = ["rock", "paper", "scissors"]
    if @hand1 == @hand2
      return "draw"
    elsif @hand1 == "paper" && @hand2 == "rock"
      return "#{@hand1} wins!"
    elsif @hand1 == "rock" && @hand2 == "scissors"
      return "#{@hand1} wins!"
    elsif @hand1 == "scissors" && @hand2 == "paper"
      return "#{@hand1} wins!"
    elsif !choices.include?(@hand1) || !choices.include?(@hand2)
      return "NOOOOOOO wrong"
    else "#{@hand2} wins!"
    end
  end


  end
