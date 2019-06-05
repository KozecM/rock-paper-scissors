class Game

  attr_reader :started, :finished

  def start
    @started = true
    @finished = false
  end

  def finish_game
    @finished = true
  end

  def finished?
    self.finished || false
  end

  def started?
    self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if (left == :rock && right == :scissors)
      self.finish_game
      "Rock beats scissors!" 
    elsif(left == :scissors && right == :rock)
      self.finish_game
      "Rock beats scissors!"
    elsif(left == :paper && right == :rock)
      self.finish_game
      "Paper beats rock!"
    elsif(left == :rock && right == :paper)
      self.finish_game
      "Paper beats rock!"
    elsif(left == :scissors && right == :paper)
      self.finish_game
      "Scissors beats paper!"
    elsif(left == :paper && right == :scissors)
      self.finish_game
      "Scissors beats paper!"
    elsif(tie(left, right))
      "Tie game. Try again!"
    else
      :UNKNOWN
    end

  end

  def tie(left, right)
    if left == right
      true
    else
      false
    end
  end

end