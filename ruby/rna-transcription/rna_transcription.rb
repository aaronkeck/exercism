class Complement
  @DNA_TO_RNA = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }
  def self.of_dna(rna)
    if not /[^CGTA]/ =~ rna
      rna.chars.map{ |c| @DNA_TO_RNA.fetch(c) }.join
    else
      ''
    end
  end
end

module BookKeeping
  VERSION = 4
end