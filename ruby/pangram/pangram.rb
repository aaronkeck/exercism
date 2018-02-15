class Pangram
  def self.pangram?(phrase)
    phrase_lowered = phrase.downcase
    ('a'..'z').each { |c| return false unless phrase_lowered.include? c }
    true
  end
end

module BookKeeping
  VERSION = 6
end
