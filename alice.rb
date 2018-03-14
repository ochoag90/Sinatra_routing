for i in 1..100
  if i % 3 == 0 && i % 5 == 0
    puts "FizzBuzz"
  elsif i % 3 == 0 || i % 5 == 0
    if i % 3 == 0
      puts 'Fizz'
    else
      puts 'Buzz'
    end
  else
    puts i
  end
end
