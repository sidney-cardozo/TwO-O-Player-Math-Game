class Question
  attr_reader :question
  def initialize
    @num1 = [*1..20].sample
    @num2 = [*1..20].sample
    @question = "What is #{@num1} + #{@num2} ?"
    @answer = @num1 + @num2
  end

  def questionCheck?()
    qanswer = gets.to_i
    qanswer == @answer
  end
end


