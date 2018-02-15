# Perform sum of squares, square of sums, and difference operations on a number
class Squares
  def initialize(n)
    @number = n
  end

  def square_of_sum
    (1..@number).reduce(:+)**2
  end

  def sum_of_squares
    (1..@number).map { |n| n**2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
