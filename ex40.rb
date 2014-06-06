class Domino

	def initialize(sideOne, sideTwo)
		@side1 = sideOne
		@side2 = sideTwo
	end
	
	def printDomino()
		puts " ---------"
		puts "|  #{@side1} | #{@side2}  |"
		puts " ---------"
	end
	
	def getSide1()
		return @side1
	end
	
	def getSide2()
		return @side2
	end
end


def generateDominoDeck()
	num = 6
	number = 0
	list = []

	for i in (0..6)
		num = i
		for b in (number..6)
			temp = Domino.new(i,b)
			list.push(temp)
		end
		number = number + 1
	end
	
	return list
end

randomNumbers = []
for i in (0..27)
	randomNumbers.push(i)
end

randomNumbers2 = []
puts randomNumbers.length
list = generateDominoDeck()
prng = Random.new
for i in (0..27)
	r = prng.rand(0..randomNumbers.length-1)
	randomNumbers2.push(randomNumbers[r])
	randomNumbers[r] = randomNumbers.pop()
	
end

print randomNumbers2

