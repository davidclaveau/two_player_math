class MathLogic
  attr_reader :question
  attr_accessor :answer
  attr_accessor :num1
  attr_accessor :num2

  def initialize
    @num1
    @num2
    @question
    @answer
  end

  def question
    self.num1 = rand(1..20)
    self.num2 = rand(1..20)
    "What does #{self.num1} plus #{self.num2} equal?"
  end

  def correct_answer
    self.answer = self.num1 + self.num2
  end

end