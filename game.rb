class Game 
  attr_accessor :current_player
  attr_accessor :response

  def initialize(player)
    @current_player = player
    @response
  end

  def turn
    if (@current_player == "Player 1")
      @current_player = "Player 2"
    else
      @current_player = "Player 1"
    end
  end

  # Ask player the question
  def ask_math math
    puts "----- NEW TURN -----"
    puts "#{self.current_player}: #{math.question}"
  end
  
  # Retrieve player input and store as a response
  def player_input
    print "> "
    self.response = $stdin.gets.chomp
  end
  
  # Check if player res matches answer
  # Decrement life if answer is incorrect
  def check_answer math, player1, player2
    if (self.response.to_i == math.correct_answer)
      puts "#{current_player}: YES! You are correct."
    else
      puts "#{current_player}: Seriously? No!"
      life_decrement player1, player2
    end
  end

  def life_decrement  player1, player2
    if current_player == "Player 1"
      player1.player_lives -= 1
      puts player1.player_lives
    elsif current_player == "Player 2"
      player2.player_lives -= 1
      puts player2.player_lives
    end

    check_game_over player1, player2
  end

  # After decrementing life, check if player still has lives
  # End game if out of lives
  def check_game_over player1, player2
    if player1.player_lives == 0
      puts "----- GAME OVER -----"
      puts "Player 2 wins with a score of #{player2.player_lives}/3"
      exit(0)
      
    elsif player2.player_lives == 0  
      puts "----- GAME OVER -----"
      puts "Player 1 wins with a score of #{player1.player_lives}/3"
      exit(0)
    end
  end
end