# require 'pry'

class RPSGame
  attr_accessor :computer_play

  PLAYS = [:rock, :paper, :scissors]

  def initialize(type)
    if PLAYS.include?(type)
      @type = type
    else
      raise PlayTypeError
    end
  end

  def self.valid_play?(type)
    if PLAYS.include?(type)
      true
    else
      false
    end
  end

  def computer_play
    @computer_play = PLAYS.sample
  end

  def read_computer_play
    @computer_play
  end

  def won?
    if @type == :rock && self.computer_play == :scissors
      return true
    elsif @type == :scissors && self.computer_play == :paper
     
      return true
    elsif @type == :paper && self.computer_play == :rock
    
      return true
    else
      return false
    end
  end

  def tied?
    if @type == :rock && self.computer_play == :rock
      return true
    elsif @type == :scissors && self.computer_play == :scissors
     
      return true
    elsif @type == :paper && self.computer_play == :paper
    
      return true
    else
      return false
    end
  end

    def lost?
    if @type == :rock && self.computer_play == :paper
      return true
    elsif @type == :scissors && self.computer_play == :rock
     
      return true
    elsif @type == :paper && self.computer_play == :scissors
    
      return true
    else
      return false
    end
  end

end

class PlayTypeError < Exception
end

