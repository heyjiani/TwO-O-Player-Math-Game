class Player
    attr_accessor :name, :lives, :turn
  
    def initialize(n)
      @name = "Player #{n}"
      @lives = 3
      @turn = false
    end
  
    def deduct_one
      self.lives -= 1
    end
  
    def lost?
      @lives < 1
    end
  
    def wins
      "#{name} wins with a score of #{lives}/3"
    end
  
  end