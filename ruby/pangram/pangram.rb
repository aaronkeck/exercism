class Pangram
  def self.pangram?(phrase)
    return false unless ('a'..'z').all? { |c| phrase.downcase.include? c }
    true
  end
end

module BookKeeping
  VERSION = 6
end
