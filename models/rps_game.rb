class RPSGame
  def initialize(type)
    if type != :rock || type != :paper || :type != :scissors
      PlayTypeError
    else
      @type = type
    end
  end
end

class PlayTypeError < Exceptions
end
