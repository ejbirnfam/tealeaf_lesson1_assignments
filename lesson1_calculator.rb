
def say(message)
  puts "---> #{message}"
end

say("Welcome to Eric's calculator!")

begin
  say("Please insert a number")
  num1 = gets.chomp.to_f

  say("Please insert a number")
  num2 = gets.chomp.to_f

  say("Please type 1 for addition, 2 for subtraction, 3 for multiplication, or 4 for division")
  operation = gets.chomp

  if operation == "1"
    result = num1.to_i + num2.to_i
  elsif operation == "2"
    result = num1.to_i - num2.to_i
  elsif operation == "3"
    result = num1.to_i * num2.to_i
  elsif operation == "4"
    result = num1.to_f / num2.to_f
  else
    result = "Follow instructions next time!"
  end

  say("The result is #{result}")
  say("Please type x to start again or any other character to exit")
  answer = gets.chomp

end while answer == "x"