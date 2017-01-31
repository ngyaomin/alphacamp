def even(number)


  if number%2 == 0
  puts  "even"
  else
  puts  "odd"
  end


end


number = 0

while number != 'q' do
  puts "enter your number: (or type 'q' to exit)"
  number = gets.chomp
  if number == 'q'
    break
  else
    even(number.to_i)
  end
end
