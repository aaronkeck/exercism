require 'prime'

# Convert a number to a string, the contents of which
# depend on the number's factors.
#
# - If the number has 3 as a factor, output 'Pling'.
# - If the number has 5 as a factor, output 'Plang'.
# - If the number has 7 as a factor, output 'Plong'.
# - If the number does not have 3, 5, or 7 as a factor,
#   just pass the number's digits straight through.
class Raindrops
  def self.convert(n)
    primes = Prime.prime_division(n)
                  .push([1, 0]) # Pushing 1 solves the edge case of n=1 => []
                  .transpose[0]
    ret = ''
    ret << 'Pling' if primes.include?(3)
    ret << 'Plang' if primes.include?(5)
    ret << 'Plong' if primes.include?(7)
    ret = n.to_s if ret == ''
    ret
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
