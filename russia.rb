def russianRoulette()
  array = [0, 0, 0, 0, 0, 0]
  array[rand(0..5)] = 1
  array.shuffle

  if array[0] == 1
    print "GAME OVER"
  else
    print "You survived. Press ENTER to continue."
    gets
    russianRoulette()
  end
end

puts "Press ENTER to start"
gets
russianRoulette()
