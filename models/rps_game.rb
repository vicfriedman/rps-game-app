class RPSGame
  def initialize(type)
    if type != :rock || type != :paper || :type != :scissors
      RPSGame::PlayTypeError
    else
      @type = type
    end
  end
end
