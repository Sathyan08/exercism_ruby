module Complement

  def self.of_dna(dna)
    rna = ''

    dna.chars.each do |acid|
      if acid == 'G'
        rna += 'C'
      elsif acid == 'C'
        rna += 'G'
      elsif acid == 'A'
        rna += 'U'
      else
        rna += 'A'
      end
    end

    rna
  end

  def self.of_rna(rna)
    dna = ''

    rna.chars.each do |acid|
      if acid == 'G'
        dna += 'C'
      elsif acid == 'C'
        dna += 'G'
      elsif acid == 'A'
        dna += 'T'
      else
        dna += 'A'
      end
    end

    dna
  end
end
