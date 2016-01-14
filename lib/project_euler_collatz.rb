def even_next(n)
  n = n / 2
end

def odd_next(n)
  n =	(3*n) + 1
end

def next_value(n)
  if n % 2 == 0
		even_next(n)
	else
		odd_next(n)
	end
end

def collatz(n)
  collatz_sequence = [n]
	until collatz_sequence.last == 1
		collatz_sequence << next_value(n)
		n = next_value(n)
	end
	return collatz_sequence
end

def longest_collatz
  n = 999999
	starting_number = 1
	longest_sequence = []
	collatz_length = 0
	until starting_number > n
		if collatz(starting_number).length > collatz_length
			collatz_length = collatz(starting_number).length
			longest_start_num = starting_number
		end
		starting_number += 1
	end
return longest_start_num
end