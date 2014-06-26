class DnaStrandPair

  def initialize(strand_1, strand_2)
    @strand_1 = strand_1
    @strand_2 = strand_2
  end


  def hamming_distance

    hamming_distance = Array.new

    strand1_array = @strand_1.split('')
    strand2_array = @strand_2.split('')

    if strand1_array.length <= strand2_array.length
      shortest = strand1_array
      longest = strand2_array
    else
      shortest = strand2_array
      longest = strand1_array
    end

    shortest.each_with_index do |element, index|
      unless longest[index] == element
        hamming_distance << element
      end
    end

    hamming_distance.length

  end

end


