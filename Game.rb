require "./player.rb"
require "./question.rb"


class Game
  def initialize
    @player1 = Player.new("player1")
    @player2 = Player.new("player2")
    @game_status = true
    @players = [@player1, @player2]
  end

  def runGame ()
    puts "********************"
    puts "Welcome to Math game"
    puts "********************"
    while @game_status do
      @players.each do |player|
        q = Question.new()
        puts "------New Turn ------\n"
        puts "#{player.name}: "+q.question
        if q.questionCheck?
          puts "#{player.name}: You are correct"
        else
          puts "#{player.name}: Seriously???? you suck!"
          player.num_lives -= 1
          if player.num_lives < 1
            @game_status = false
            break
          end
        end
        puts "P1: #{@players[0].num_lives}/3    P2: #{@players[1].num_lives}/3 \n"
      end
    end
    # puts @players
    @players.each do |player|
      if player.num_lives > 1
        puts "#{player.name} wins with a score of #{player.num_lives}/3"
        puts "------Game Over------"
        puts "GoodBye!"
      end
    end
  end
end









