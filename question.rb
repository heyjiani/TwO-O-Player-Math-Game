class Question
    attr_accessor = :answer
  
    def initialize
      @num1 = rand(1...20).to_i
      @num2 = rand(1...20).to_i
      @answer = @num1 + @num2
    end
  
    def ask
      "What does #{@num1} plus #{@num2} equal?"
    end
  
    def right_answer?(a)
      a == @answer
    end
  
  end