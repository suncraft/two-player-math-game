require './player'

@player_1 = Player.new(1)
@player_2 = Player.new(2)

# puts player_1.life

def turn_loop
  @turn = 1
    while @player_1.life > 0 && @player_2.life > 0 do
      player_turn
      puts "The question..."
      question
      verify_answer
      @turn += 1
      puts "-------"
    end
   who_wins?
 end

 def player_turn
  if @turn % 2 == 0
    @player = @player2
  else
    @player = @player1
  end
end

def question
  @num1 = rand(1..20)
  @num2 = rand(1..20)

  puts "What does #{@num1} plus #{@num2} equal?"
  @user_answer = gets.chomp.to_i
end

def verify_answer
  calc_answer
  if @actualAnswer == @user_answer
    puts "Correct!"
  else
    puts "Wrong!"
    losses_life
  end
end

def losses_life
  if @turn % 2 == 0
    @player_2.life -= 1
    puts "#{@player_2.turn}, You have #{@player_2.life} lives left"
  else
    @player_1.life -= 1
    puts "#{@player_1.turn}, You have #{@player_1.life} lives left"
  end
end

def calc_answer
    answer = @num1 + @num2
  @actualAnswer = answer
  puts "real answer = #{@actualAnswer}"
end

def who_wins?
  if @player_1.life > @player_2.life
    puts "#{@player_1.turn} Victory!" 
    puts "#{@player_1.turn}'s score: #{@player_1.life}/3" 
  else
    puts "#{@player_2.turn} Victory" 
    puts "#{@player_2.turn}'s score: #{@player_2.life}/3" 
  end
end

# player_1 + question
turn_loop


# class P
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

# end