def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(a)
	total = 0
	a.each{|number| total += number}
	total
end

def multiply(*args)
	total = 1
	args.each{|number| total *= number}
	total
end

def power(a,b)
	a**b
end

def factorial(a)
	if a == 0
		0
	else
		total = 1
		for num in (1..a)
			total *= num
		end
		total
	end
end
