require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestGame < Minitest::Test

  def setup
    @game = Game.new(@hand1, @hand2)
  end

  def test_paper_wins()
    assert_equal("paper wins!",@game.play("rock", "paper"))
    assert_equal("paper wins!",@game.play("paper", "rock"))

  end

  def rock_wins()
    assert_equal("rock wins!",@game.play("rock", "scissors"))
    assert_equal("rock wins!",@game.play("scissors", "rock"))
  end

  def scissors_wins()
    assert_equal("scissors wins!",@game.play("scissors", "paper"))
    assert_equal("scissors wins!",@game.play("paper", "scissors"))
  end

  def test_draw
    assert_equal("Draw",@game.play("paper", "paper"))
  end

  def test_wrong
    assert_equal("NOOOOOOO wrong",@game.play("poo", "scissors"))
  end

end
