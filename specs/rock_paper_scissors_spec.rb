require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestGame < Minitest::Test

  def setup
    @game = Game.new(@hand1, @hand2)
  end

  def test_paper_wins()
    assert_equal("Paper wins!",@game.play("Rock", "Paper"))
    assert_equal("Paper wins!",@game.play("Paper", "Rock"))

  end

  def rock_wins()
    assert_equal("Rock wins!",@game.play("Rock", "Scissors"))
    assert_equal("Rock wins!",@game.play("Scissors", "Rock"))
  end

  def scissors_wins()
    assert_equal("Scissors wins!",@game.play("Scissors", "Paper"))
    assert_equal("Scissors wins!",@game.play("Paper", "Scissors"))
  end

  def test_draw
    assert_equal("Draw",@game.play("Paper", "Paper"))
  end

  def test_wrong
    assert_equal("NOOOOOOO wrong",@game.play("poo", "Scissors"))
  end

end
