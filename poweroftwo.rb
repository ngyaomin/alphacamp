
def is_power_of_two(n)
	result = Math.sqrt(n)
	result2   = result % 1
		if Math.sqrt(n) % 1 == 0
      return true
    else
      return false
    end
  end


puts is_power_of_two(32)
puts is_power_of_two(49)

# my understanding of power of 2 means that the number is x to the power of 2 like 49 is 7 to power of two.
# sorry i bad at maths i only understand money.