require "./question.rb"
require "./player.rb"

class Game
    attr_reader :p1, :p2, :question
  
    def initialize
      @p1 = Player.new(1)
      p1.turn = true
      @p2 = Player.new(2)
    end
  
    def start
      puts "----- Two-O-Player Math Game -----"
      while !p1.lost? && !p2.lost?
        puts "----- NEW TURN -----"
        self.play_game
      end
      puts p1.lost? ? p2.wins : p1.wins
      puts "----- GAME OVER -----"
    end
    
    def play_game
      @question = Question.new
      print "#{p1.turn ? p1.name : p2.name}: "
      puts "#{question.ask}"
      print "> "
      player_answer = $stdin.gets.chomp.to_i
      if !question.right_answer?(player_answer)
        puts "NOPE"
        p1.turn ? p2.deduct_one : p1.deduct_one
      else
        puts "YAY!!"
      end
      puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
      self.change_player
    end
  
    def change_player
      p1.turn = !p1.turn
      p2.turn = !p2.turn
    end
  
  end